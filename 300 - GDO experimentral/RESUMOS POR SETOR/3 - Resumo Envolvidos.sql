set @mes = 5;
set @ano = 2019;

select MUNICIPIO, FRACAO, SETOR,

sum(case -- calcula quantidade de presos
		when
        (month(DATA_FATO) = @mes and year(DATA_FATO) = @ano) -- COND1
        AND
			(ORG_UN_REG = 'POLICIA MILITAR') -- COND2
        AND
        (
				(COD_DIAO IN ('B01121', 'C01157', 'D01213','D01217') AND T_C in ('CONSUMADO', 'TENTADO'))
         OR
				(COD_DIAO in ('B01148', 'C01158', 'C01159') AND T_C = 'CONSUMADO')
		 OR
				(COD_DIAO = 'C01158' and T_C = 'TENTADO')
        ) -- COND3
        AND
        (PRISAO_APREES IN ('FLAGRANTE DE ATO INFRACIONAL', 'FLAGRANTE DE CRIME / CONTRAVENCAO')) -- COND4
        then 1 else 0 -- crimes do mês anterior
end) as presos_TRI,

sum(case -- calcula quantidade de presos
		when (month(DATA_FATO) <= @mes and year(DATA_FATO) = @ano) -- crimes do mês anterior
        AND
			(ORG_UN_REG = 'POLICIA MILITAR') -- COND2
        AND
        (
				(COD_DIAO IN ('B01121', 'C01157', 'D01213','D01217') AND T_C in ('CONSUMADO', 'TENTADO'))
         OR
				(COD_DIAO in ('B01148', 'C01158', 'C01159') AND T_C = 'CONSUMADO')
		 OR
				(COD_DIAO = 'C01158' and T_C = 'TENTADO')
        ) -- COND3
        AND
        (PRISAO_APREES IN ('FLAGRANTE DE ATO INFRACIONAL', 'FLAGRANTE DE CRIME / CONTRAVENCAO')) -- COND4
        then 1 else 0 -- crimes do mês anterior
end) as presos_TRI_ac,

sum(case -- condições para HOMICIDIOS
		when  ((month(DATA_FATO) = @mes and year(DATA_FATO) = @ano)
        and
        ( -- INÍCIO CONDIÇÃO PRINCIPAL		
				(COD_DIAO in ('B01121') and T_C = 'CONSUMADO')	  
				or  COD_DELITO in ('B01121') and T_C_DELITO = 'CONSUMADO')
			) -- FIM CONDIÇÃO PARA  (NATUREZAS)

AND GRAU_LESAO = 'FATAL'
AND GRUPO_TIPO_ENVOL = 'VITIMA'
       
	        
    then 1
else 0
end) as HC_VITIMA,

sum(case -- condições para HOMICIDIOS
		when  ((month(DATA_FATO) <= @mes and year(DATA_FATO) = @ano)
        and
        ( -- INÍCIO CONDIÇÃO PRINCIPAL		
				(COD_DIAO in ('B01121') and T_C = 'CONSUMADO')	  
				or  COD_DELITO in ('B01121') and T_C_DELITO = 'CONSUMADO')
			) -- FIM CONDIÇÃO PARA  (NATUREZAS)

AND GRAU_LESAO = 'FATAL'
AND GRUPO_TIPO_ENVOL = 'VITIMA'
       
	        
    then 1
else 0
end) as HC_VITIMA_ac

from vw_valid_envolvidos

where MUNICIPIO in ('DIVINOPOLIS', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')

group by MUNICIPIO, FRACAO, SETOR
ORDER BY MUNICIPIO, FRACAO, SETOR;

