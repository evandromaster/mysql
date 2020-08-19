create view vw_valid_crimes_setor as

select NREDS, COD_DIAO, T_C, COD_DIAO1, T_C1,  COD_DIAO2, T_C2, COD_DIAO3, T_C3, BAIRRO, BAIRRO_NAO_CAD, LOG_TIPO, LOGRADOURO, LOGRADOURO_NAO_CAD, COMPLEMENTO_END, PONTO_REF, MUNICIPIO, UN_AREA_MIL, UN_REGISTRO, LATITUDE, LONGITUDE,
HORA_FATO, concat(DATA_FATO, ' ', HORA_FATO) as DH_FATO, concat(DATA_COM, ' ', HORA_COM) as DH_COM,
(timediff(concat(DATA_COM, ' ', HORA_COM), concat(DATA_FATO, ' ', HORA_FATO))) as Difer_hora, DATE_FORMAT(DATA_FATO,'%d/%m/%Y') AS DATA_FATO_BR, DATA_FATO, MONTH(DATA_FATO) AS MESATUAL, DATA_ULT_ATT,
UEOP, COMPANHIA, FRACAO, SETOR, VALIDADOR,


-- /*CAMPO COMPNHIA)*/
-- fnc_companhia_reds (MUNICIPIO, NREDS, BAIRRO, BAIRRO_NAO_CAD, LOGRADOURO, LOGRADOURO_NAO_CAD, LOGRADOURO_CRUZ, LOGRADOURO_CRUZ_NAO_CAD, COMPLEMENTO_END, PONTO_REF) as COMPANHIA,
-- /*CAMPO DE VALIDAÇÃO (CIA_BASE)*/
-- fnc_cia_sede_reds_7rpm (MUNICIPIO, NREDS, BAIRRO, BAIRRO_NAO_CAD, LOGRADOURO, LOGRADOURO_NAO_CAD, LOGRADOURO_CRUZ, LOGRADOURO_CRUZ_NAO_CAD, COMPLEMENTO_END, PONTO_REF) as CIA_SEDE,
-- /*CAMPO DE TIPO VALIDADOR (SÓ APLICADO EM DIVINÓPOLIS E NOVA SERRANA)*/
-- fnc_tipo_validador_reds (MUNICIPIO, NREDS, BAIRRO, BAIRRO_NAO_CAD, LOGRADOURO, LOGRADOURO_NAO_CAD, LOGRADOURO_CRUZ, LOGRADOURO_CRUZ_NAO_CAD, COMPLEMENTO_END, PONTO_REF) as VALIDADOR,
-- /*************** SETORIZAÇÃO*******************/
-- classificaRedsPorSetor(MUNICIPIO, NREDS, BAIRRO, BAIRRO_NAO_CAD, LOGRADOURO, LOGRADOURO_NAO_CAD, LOGRADOURO_CRUZ, LOGRADOURO_CRUZ_NAO_CAD, COMPLEMENTO_END, PONTO_REF) as SETOR,
-- ************** FIM SETORIZAÇÃO
/*CAMPO DE CRIMES VIOLENTOS E EXTORSÃO (ATRIBIU 1, QUANDO FOR E 0, QUANDO NÃO FOR)*/
/*case -- condições para crimes violentos
		when ( -- INÍCIO CONDIÇÃO 1		
					(COD_DIAO in ('C01157', 'B01148', 'C01159', 'C01158') and T_C = 'CONSUMADO')	  
				or  COD_DIAO in ('B01121', 'D01213', 'D01217')
			 ) -- FIM CONDIÇÃO 1 (NATUREZAS)
         
		-- and (right(NREDS,3) = '001') -- CONDIÇÃO 2 (EXCLUI OCORRÊNCIAS ASSOCIADAS, DIREFENTES DE 001) REGRA DESATIVADA - EM 2019 CONTA 002 E 003 TAMBÉM
         
    then 1
else 0
end as CV, -- regra de 2018 PARA  COMPUTO DO ICV*/

-- ************** FIM SETORIZAÇÃO
/*CAMPO DE CRIMES VIOLENTOS E EXTORSÃO (ATRIBIU 1, QUANDO FOR E 0, QUANDO NÃO FOR)*/
case -- condições para crimes violentos
		when (( -- INÍCIO CONDIÇÃO PRINCIPAL		
				(COD_DIAO in ('B01148', 'C01159', 'C01158') and T_C = 'CONSUMADO')	  
				or  COD_DIAO in ('C01157', 'B01121', 'D01213', 'D01217')
			) -- FIM CONDIÇÃO PRINCIAPAL (NATUREZAS)


or ( -- INÍCIO CONDIÇÃO NATUREZA SECUNDARIA1		
				(COD_DIAO1 in ('B01148', 'C01159', 'C01158') and T_C1 = 'CONSUMADO')	  
				or  COD_DIAO1 in ('C01157', 'B01121', 'D01213', 'D01217')
			) -- FIM CONDIÇÃO 1 (NATUREZAS)

or ( -- INÍCIO CONDIÇÃO NATUREZA SECUNDARIA2		
				(COD_DIAO2 in ('B01148', 'C01159', 'C01158') and T_C2 = 'CONSUMADO')	  
				or  COD_DIAO2 in ('C01157', 'B01121', 'D01213', 'D01217')
			) -- FIM CONDIÇÃO 2 (NATUREZAS)


or ( -- INÍCIO CONDIÇÃO NATUREZA SECUNDARIA3		
				(COD_DIAO3 in ('B01148', 'C01159', 'C01158') and T_C3 = 'CONSUMADO')	  
				or  COD_DIAO3 in ('C01157', 'B01121', 'D01213', 'D01217')
			) -- FIM CONDIÇÃO 3 (NATUREZAS)
or
NREDS in ('2019-000063007-001','2019-000146909-001','2019-000654571-001','2019-000742467-001','2019-001003146-001','2019-001249542-001','2019-001716059-001','2019-003172965-001','2019-003276960-001','2019-004625882-001',
	'2019-004563261-001','2019-004900113-001','2019-005293686-001','2019-005552425-001','2019-005811760-001','2019-008179374-001','2019-008182798-001','2019-008660564-001','2019-011218706-001','2019-009606566-001')
			)      
		-- and (right(NREDS,3) = '001') -- CONDIÇÃO 2 (EXCLUI OCORRÊNCIAS ASSOCIADAS, DIREFENTES DE 001) REGRA DESATIVADA - EM 2019 CONTA 002 E 003 TAMBÉM
         
    then 1
else 0
end as CV,

/*CAMPO DE CRIMES VIOLENTOS E EXTORSÃO (ATRIBIU 1, QUANDO FOR E 0, QUANDO NÃO FOR)*/
case -- condições para crimes violentos
		when  -- INÍCIO CONDIÇÃO PRINCIPAL		
				COD_DIAO = 'C01155' 
         
		-- and (right(NREDS,3) = '001') -- CONDIÇÃO 2 (EXCLUI OCORRÊNCIAS ASSOCIADAS, DIREFENTES DE 001) REGRA DESATIVADA - EM 2019 CONTA 002 E 003 TAMBÉM
         
    then 1
else 0
end as TQF,



/*CAMPO DE CRIMES PARA TRI (ATRIBIU 1, QUANDO FOR E 0, QUANDO NÃO FOR)*/
case -- condições para crimes TRI
	when 	(	
				(COD_DIAO in ('C01157', 'B01148', 'C01159', 'C01158') and T_C = 'CONSUMADO')	  
				or
                COD_DIAO in ('B01121', 'D01213', 'D01217')
			)
				and timediff(concat(DATA_COM, ' ', HORA_COM), concat(DATA_FATO, ' ', HORA_FATO)) < convert('12:00:00', time)            
                and ORG_UN_REG = 'POLICIA MILITAR'
                -- and (right(NREDS,3) = '001')
    then 1	
else 0
end as TRCV,

/*CAMPO DE CRIMES PARA TX DE ATEND. AS VIT (ATRIBIU 1, QUANDO FOR E 0, QUANDO NÃO FOR)*/
/*case -- condições para crimes TX_ATEND_VIT
	when 	(	
					(COD_DIAO in ('C01157', 'B01148', 'C01159', 'C01158') and T_C = 'CONSUMADO')	  
				or  COD_DIAO = 'B01121'         		            
            )
			-- and (right(NREDS,3) = '001')
    then 1	
else 0
end as TX_ATEND_VIT,*/

/*CAMPO DE CRIMES PARA IAF (ATRIBIU 1, QUANDO FOR E 0, QUANDO NÃO FOR)*/
case -- condições para crimes IAF
	when 	COD_DIAO in ('B01121', 'C01157', 'C01158', 'C01159',  'D01213', 'E03015')
			and DESC_MEIO_UTILIZADO in ('ARMA DE FOGO', 'ARMAS DE FOGO')
            -- and (right(NREDS,3) = '001')
    then 1
else 0
end as TCAF,

/*CAMPO QUE APONTA OS CRIMES AUDITADOS (ATRIBIU 1, QUANDO TIVER DE SER CONTABILIZADO E 0, QUANDO NÃO TIVER)*/
case
	when NREDS not in (select NREDS from tbl_auditorias) then 1
else 0
end as Auditoria,

-- case -- condições para crimes IAF
-- 	when 	MONTH(DATA_FATO) ='1' then 2
--     when 	MONTH(DATA_FATO) ='2' then 3
--     when 	MONTH(DATA_FATO) ='3' then 4
--     when 	MONTH(DATA_FATO) ='4' then 5
--     when 	MONTH(DATA_FATO) ='5' then 6
--     when 	MONTH(DATA_FATO) ='6' then 7
--     when 	MONTH(DATA_FATO) ='7' then 8
--     when 	MONTH(DATA_FATO) ='8' then 9
--     when 	MONTH(DATA_FATO) ='9' then 10
--     when 	MONTH(DATA_FATO) ='10' then 11
-- 	when 	MONTH(DATA_FATO) ='11' then 12
-- 	when 	MONTH(DATA_FATO) ='12' then 1
-- else 0
-- end as MESANTERIOR,

	case
	when NREDS in ('2019-000063007-001','2019-000146909-001','2019-000654571-001','2019-000742467-001','2019-001003146-001','2019-001249542-001','2019-001716059-001','2019-003172965-001','2019-003276960-001','2019-004625882-001',
	'2019-004563261-001','2019-004900113-001','2019-005293686-001','2019-005552425-001','2019-005811760-001','2019-008179374-001','2019-008182798-001','2019-008660564-001','2019-011218706-001','2019-009606566-001')

																										then 'C01157' -- ROUBO
	else
		case
			when COD_DIAO = 'C01157' OR COD_DIAO1 = 'C01157' OR COD_DIAO2 = 'C01157' OR COD_DIAO3 = 'C01157' then 'C01157' -- ROUBO																										 
		else
			case
				when COD_DIAO = 'C01158' OR COD_DIAO1 = 'C01158' OR COD_DIAO2 = 'C01158' OR COD_DIAO3 = 'C01158' then 'C01158' -- EXTORSAO
			else
				case
					when COD_DIAO = 'B01121' OR COD_DIAO1 = 'B01121' OR COD_DIAO2 = 'B01121' OR COD_DIAO3 = 'B01121' then 'B01121' -- HOMICIDIO
				else
					case
						when COD_DIAO = 'B01148' OR COD_DIAO1 = 'B01148' OR COD_DIAO2 = 'B01148' OR COD_DIAO3 = 'B01148' then 'B01148' -- SEQUESTRO E CARCERE PRIVADO
					else
						case
							when COD_DIAO = 'C01159' OR COD_DIAO1 = 'C01159' OR COD_DIAO2 = 'C01159' OR COD_DIAO3 = 'C01159' then 'C01159' -- EXTORSAO MEDIANTE SEQUESTRO
						else
							case
								when COD_DIAO = 'D01213' OR COD_DIAO1 = 'D01213' OR COD_DIAO2 = 'D01213' OR COD_DIAO3 = 'D01213' then 'D01213' -- ESTUPRO
							else
								case
									when COD_DIAO = 'D01217' OR COD_DIAO1 = 'D01217' OR COD_DIAO2 = 'D01217' OR COD_DIAO3 = 'D01217' then 'D01217' -- ESTUPRO DE VULNERAVEL 
								else
									case	
										when COD_DIAO = 'E03015' OR COD_DIAO1 = 'E03015' OR COD_DIAO2 = 'E03015'  then 'E03015' 					   -- DISPARO DE ARMA DE FOGO/ACIONAM DE MUNICAO
									else
										case
											when COD_DIAO = 'C01155' OR COD_DIAO1 = 'C01155' OR COD_DIAO2 = 'C01155' OR COD_DIAO3 = 'C01155' then 'C01155' -- FURTO
										else 'OTHER'
										end
									end
								end
							end
						end
					end
				end
			end
		end								
	end -- 1
	as DIAO_FINAL,
    
    
    
    	CASE
		WHEN
			case
	when NREDS in ('2019-000063007-001','2019-000146909-001','2019-000654571-001','2019-000742467-001','2019-001003146-001','2019-001249542-001','2019-001716059-001','2019-003172965-001','2019-003276960-001','2019-004625882-001',
	'2019-004563261-001','2019-004900113-001','2019-005293686-001','2019-005552425-001','2019-005811760-001','2019-008179374-001','2019-008182798-001','2019-008660564-001','2019-011218706-001','2019-009606566-001')

																										then 'C01157' -- ROUBO
	else
		case
			when COD_DIAO = 'C01157' OR COD_DIAO1 = 'C01157' OR COD_DIAO2 = 'C01157' OR COD_DIAO3 = 'C01157' then 'C01157' -- ROUBO																										 
		else
			case
				when COD_DIAO = 'C01158' OR COD_DIAO1 = 'C01158' OR COD_DIAO2 = 'C01158' OR COD_DIAO3 = 'C01158' then 'C01158' -- EXTORSAO
			else
				case
					when COD_DIAO = 'B01121' OR COD_DIAO1 = 'B01121' OR COD_DIAO2 = 'B01121' OR COD_DIAO3 = 'B01121' then 'B01121' -- HOMICIDIO
				else
					case
						when COD_DIAO = 'B01148' OR COD_DIAO1 = 'B01148' OR COD_DIAO2 = 'B01148' OR COD_DIAO3 = 'B01148' then 'B01148' -- SEQUESTRO E CARCERE PRIVADO
					else
						case
							when COD_DIAO = 'C01159' OR COD_DIAO1 = 'C01159' OR COD_DIAO2 = 'C01159' OR COD_DIAO3 = 'C01159' then 'C01159' -- EXTORSAO MEDIANTE SEQUESTRO
						else
							case
								when COD_DIAO = 'D01213' OR COD_DIAO1 = 'D01213' OR COD_DIAO2 = 'D01213' OR COD_DIAO3 = 'D01213' then 'D01213' -- ESTUPRO
							else
								case
									when COD_DIAO = 'D01217' OR COD_DIAO1 = 'D01217' OR COD_DIAO2 = 'D01217' OR COD_DIAO3 = 'D01217' then 'D01217' -- ESTUPRO DE VULNERAVEL 
								else
									case	
										when COD_DIAO = 'E03015' OR COD_DIAO1 = 'E03015' OR COD_DIAO2 = 'E03015'  then 'E03015' 					   -- DISPARO DE ARMA DE FOGO/ACIONAM DE MUNICAO
									else
										case
											when COD_DIAO = 'C01155' OR COD_DIAO1 = 'C01155' OR COD_DIAO2 = 'C01155' OR COD_DIAO3 = 'C01155' then 'C01155' -- FURTO
										else 'OTHER'
										end
									end
								end
							end
						end
					end
				end
			end
		end								
	end -- 1
	IN (/*'C01157',*/'C01159','B01148') THEN 'CONSUMADO'

		ELSE T_C

END AS T_C_FINAL

-- case when MUNICIPIO in ('CARMO DO CAJURU','CLAUDIO','DIVINOPOLIS','ITATIAIUCU','ITAUNA',
-- 'SAO GONCALO DO PARA') then '23º BPM'
-- when MUNICIPIO in ('IGARATINGA','MARAVILHAS','ONCA DO PITANGUI','PAPAGAIOS',
-- 'PARA DE MINAS','PEQUI','SAO JOSE DA VARGINHA') then '19ª Cia PM Ind' 
-- when MUNICIPIO in ('ARAUJOS','CONCEICAO DO PARA','LEANDRO FERREIRA','NOVA SERRANA',
-- 'PERDIGAO','PITANGUI') then '60º BPM' 
-- when MUNICIPIO in ('ARCOS','BAMBUI','CAMACHO','CORREGO FUNDO','FORMIGA','IGUATAMA','ITAPECERICA',
-- 'MEDEIROS','PAINS','PIMENTA','SAO SEBASTIAO DO OESTE','TAPIRAI') then '63º BPM' 
-- when MUNICIPIO in ('ABAETE','BIQUINHAS','BOM DESPACHO','CEDRO DO ABAETE','CORREGO DANTA',
-- 'DORES DO INDAIA','ESTRELA DO INDAIA','JAPARAIBA','LAGOA DA PRATA','LUZ','MARTINHO CAMPOS','MOEMA',
-- 'MORADA NOVA DE MINAS','PAINEIRAS','PEDRA DO INDAIA','POMPEU','QUARTEL GERAL','SANTO ANTONIO DO MONTE',
-- 'SERRA DA SAUDADE') then '7º BPM' 
-- else 'outro' end as UEOP
-- 'cr' as rel
from tbl_crimes
-- where NREDS not in (select NREDS from tbl_d_auditorias)
;