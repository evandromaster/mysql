set @mes =10;
set @ano = 2018;
select MUNICIPIO, CIA_BASE, count(*) AS TOTAL,

sum(case -- calcula crimes computados para o indicador "Taxa de Atendimento às Vítimas de Crimes Violentos"
when month(PRAZO_RESPOSTA) = @mes and year(PRAZO_RESPOSTA) = @ano
then 1 else 0 -- crimes do mês anterior
end) as RECEBIDAS,

sum(case -- calcula crimes computados para o indicador "Taxa de Atendimento às Vítimas de Crimes Violentos"
when RESTANTE = 'RESPONDIDO' AND month(PRAZO_RESPOSTA) = @mes and year(PRAZO_RESPOSTA) = @ano
then 1 else 0 -- crimes do mês anterior
end) as CONCLUIDAS,


	round((sum(case -- RECEBIDAS
	when RESTANTE = 'RESPONDIDO' AND month(PRAZO_RESPOSTA) = @mes and year(PRAZO_RESPOSTA) = @ano
	then 1 else 0
	end)) -- RECEBIDAS
/
	(sum(case -- CONCLUÍDAS
	when month(PRAZO_RESPOSTA) = @mes and year(PRAZO_RESPOSTA) = @ano
	then 1 else 0 
	end)) -- CONCLUÍDAS
    
* 100, 2) as PERC_CONCLUIDAS,

round((sum(case -- RECEBIDAS
	when RESTANTE = 'RESPONDIDO' AND month(PRAZO_RESPOSTA) = @mes and year(PRAZO_RESPOSTA) = @ano
	then 1 else 0
	end)) -- RECEBIDAS
/
	(sum(case -- CONCLUÍDAS
	when month(PRAZO_RESPOSTA) = @mes and year(PRAZO_RESPOSTA) = @ano
	then 1 else 0 
	end)) -- CONCLUÍDAS
    
* 100, 2) *0.8 as META,
sum(case -- calcula crimes computados para o indicador "Taxa de Atendimento às Vítimas de Crimes Violentos"
when SUCESSO = 'SIM' AND month(PRAZO_RESPOSTA) = @mes and year(PRAZO_RESPOSTA) = @ano
then 1 else 0 -- crimes do mês anterior
end) as CONCLUIDAS_COM_SUCESSO,


round((sum(case -- calcula crimes computados para o indicador "Taxa de Atendimento às Vítimas de Crimes Violentos"
when SUCESSO = 'SIM' AND month(PRAZO_RESPOSTA) = @mes and year(PRAZO_RESPOSTA) = @ano
then 1 else 0 -- crimes do mês anterior
end)) -- RECEBIDAS
/
	(sum(case -- CONCLUÍDAS
	when month(PRAZO_RESPOSTA) = @mes and year(PRAZO_RESPOSTA) = @ano
	then 1 else 0 
	end)) -- CONCLUÍDAS
    
* 100, 2) as PERC_CONCL_SUCESSO,
round((sum(case -- RECEBIDAS
	when RESTANTE = 'RESPONDIDO' AND month(PRAZO_RESPOSTA) = @mes and year(PRAZO_RESPOSTA) = @ano
	then 1 else 0
	end)) -- RECEBIDAS
/
	(sum(case -- CONCLUÍDAS
	when month(PRAZO_RESPOSTA) = @mes and year(PRAZO_RESPOSTA) = @ano
	then 1 else 0 
	end)) -- CONCLUÍDAS
    
* 100, 2) *0.3 as META_SUC
from tbl_ddu
group by municipio, CIA_BASE WITH ROLLUP;

-- SELECT ROUND(12.3333, 2);


