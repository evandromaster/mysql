DELIMITER //

CREATE PROCEDURE prc_crimes_mes_acum (inicio_ano char(10), inicio_mes char(10), fim_mes char(10))
BEGIN

select Cia_Base,
sum(
case -- condições para crimes violentos
	when (	(COD_DIAO in ('C01157', 'B01148', 'C01159') and T_C = 'CONSUMADO')	  
			or  COD_DIAO in ('C01158', 'B01121', 'D01213', 'D01117')
          )		and DATA_HORA_FATO between inicio_ano and fim_mes  
            
    then 1	
else 0
end) as CR_V_ano,
sum(
case -- condições para crimes violentos
	when (	(COD_DIAO in ('C01157', 'B01148', 'C01159') and T_C = 'CONSUMADO')	  
			or  COD_DIAO in ('C01158', 'B01121', 'D01213', 'D01117')
          )		and DATA_HORA_FATO between inicio_mes and fim_mes  
            
    then 1	
else 0
end) as CR_V_mes,

sum(
case -- condições para crimes IAF	
    when 	(		(COD_DIAO in ('B01121', 'C01157', 'B01148') and T_C = 'CONSUMADO' and DESC_MEIO_UTILIZADO = 'ARMAS DE FOGO')
			or	 	(COD_DIAO in ('C01158', 'C01159',  'D01213', 'E03015') and DESC_MEIO_UTILIZADO = 'ARMAS DE FOGO')	)
			and 	DATA_HORA_FATO between inicio_mes and fim_ano  
    then 1
else 0
end) as CR_IAF_ano,
sum(
case -- condições para crimes IAF	
    when 	(		(COD_DIAO in ('B01121', 'C01157', 'B01148') and T_C = 'CONSUMADO' and DESC_MEIO_UTILIZADO = 'ARMAS DE FOGO')
			or	 	(COD_DIAO in ('C01158', 'C01159',  'D01213', 'E03015') and DESC_MEIO_UTILIZADO = 'ARMAS DE FOGO')	)
			and 	DATA_HORA_FATO between inicio_mes and fim_mes  
    then 1
else 0
end) as CR_IAF_mes,
sum(
case -- condições para TRI

	when 	(		((COD_DIAO in ('C01157', 'B01148', 'C01159') and T_C = 'CONSUMADO')	  -- condições para crime violento
				or  COD_DIAO in ('C01158', 'B01121', 'D01213', 'D01117')	)			
            and		ORG_UN_REG = 'POLICIA MILITAR'            
            and		timediff(str_to_date(DATA_HORA_FATO, '%Y-%m-%d %H:%i:%S') , str_to_date(DATA_HORA_FATO, '%Y-%m-%d %H:%i:%S')) < '12:00:00'
            )		and DATA_HORA_FATO between inicio_ano and fim_mes
then 1

end) as CR_TRI_ano,
sum(
case -- condições para TRI

	when 	(	((COD_DIAO in ('C01157', 'B01148', 'C01159') and T_C = 'CONSUMADO')	  -- condições para crime violento
				or  COD_DIAO in ('C01158', 'B01121', 'D01213', 'D01117'))			
            and		ORG_UN_REG = 'POLICIA MILITAR'            
            and		timediff(str_to_date(DATA_HORA_FATO, '%Y-%m-%d %H:%i:%S') , str_to_date(DATA_HORA_FATO, '%Y-%m-%d %H:%i:%S')) < '12:00:00'
            ) and 	DATA_HORA_FATO between inicio_mes and fim_mes
then 1
end) as CR_TRI_mes


from vw_valid_crimes
group by Cia_Base
order by Cia_Base;

select * from vw_valid_crimes;

END//


DELIMITER ;

CALL prc_crimes_mes_acum('2018-01-01 00:00:00', '2018-09-01 00:00:00', '2018-09-30 23:59:59');