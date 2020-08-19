set @mes = 4;
set @ano = 2019;

select MUNICIPIO, CIA_SEDE,

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
		 
         
         -- ---------------------------------------------------------------------------------- EM TESTE
         OR
         		(COD_DELITO IN ('B01121', 'C01157', 'D01213','D01217') AND T_C_DELITO in ('CONSUMADO', 'TENTADO'))
         OR
				(COD_DELITO  in ('B01148', 'C01158', 'C01159') AND T_C_DELITO = 'CONSUMADO')
		 OR
				(COD_DELITO  = 'C01158' and T_C_DELITO = 'TENTADO')
                
           -- --------------------------------------------------------------------------------EM TESTE              
                
        ) -- COND3
        AND
        (PRISAO_APREES IN ('FLAGRANTE DE ATO INFRACIONAL', 'FLAGRANTE DE CRIME / CONTRAVENCAO')) -- COND4
        then 1 else 0 -- crimes do mês anterior
end) as NPAA,

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
                
		      -- ---------------------------------------------------------------------------------- EM TESTE
         OR
         		(COD_DELITO IN ('B01121', 'C01157', 'D01213','D01217') AND T_C_DELITO in ('CONSUMADO', 'TENTADO'))
         OR
				(COD_DELITO  in ('B01148', 'C01158', 'C01159') AND T_C_DELITO = 'CONSUMADO')
		 OR
				(COD_DELITO  = 'C01158' and T_C_DELITO = 'TENTADO')
                
           -- --------------------------------------------------------------------------------EM TESTE 
           
        ) -- COND3
        AND
        (PRISAO_APREES IN ('FLAGRANTE DE ATO INFRACIONAL', 'FLAGRANTE DE CRIME / CONTRAVENCAO')) -- COND4
        then 1 else 0 -- crimes do mês anterior
end) as NPAA_ac,

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
-- AND UN_REGISTRO not in (SELECT UN_REGISTRO FROM tbl_un_especializada WHERE TIPO_UN_REGISTRO = 'RV')
group by CIA_SEDE WITH ROLLUP;

