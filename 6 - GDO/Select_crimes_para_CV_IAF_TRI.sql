select Cia_Base,
sum(
case -- condições para crimes violentos
	when 	(COD_DIAO in ('C01157', 'B01148', 'C01159') and T_C = 'CONSUMADO')	  
			or  COD_DIAO in ('C01158', 'B01121', 'D01213', 'D01117')
    then 1	
else 0
end) as CR_V,

sum(
case -- condições para crimes IAF	
    when 	(COD_DIAO in ('B01121', 'C01157', 'B01148') and T_C = 'CONSUMADO' and DESC_MEIO_UTILIZADO = 'ARMAS DE FOGO')
			or	 (COD_DIAO in ('C01158', 'C01159',  'D01213', 'E03015') and DESC_MEIO_UTILIZADO = 'ARMAS DE FOGO')
    then 1
else 0
end) as CR_IAF,
sum(
case -- condições para TRI

	when 	(	(COD_DIAO in ('C01157', 'B01148', 'C01159') and T_C = 'CONSUMADO')	  -- condições para crime violento
				or  COD_DIAO in ('C01158', 'B01121', 'D01213', 'D01117')	)			
            and		ORG_UN_REG = 'POLICIA MILITAR'            
            and		timediff(str_to_date(DATA_HORA_FATO, '%Y-%m-%d %H:%i:%S') , str_to_date(DATA_HORA_FATO, '%Y-%m-%d %H:%i:%S')) < '12:00:00'
            
            	
    
then 1

end) as CR_TRI


from vw_valid_crimes
group by Cia_Base
order by Cia_Base;

select * from vw_valid_crimes;