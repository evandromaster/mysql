DROP VIEW IF EXISTS  vw_pdca;

create view vw_pdca as

select o.NREDS, o.MUNICIPIO, o.DATA_FATO, o.COD_DIAO, o.UN_REGISTRO,
(timediff(concat(o.DATA_COM, ' ', o.HORA_COM), concat(o.DATA_FATO, ' ', o.HORA_FATO))) as DIFER_HORA,
-- (timediff(concat(o.DATA_COM, ' ', o.HORA_COM), concat(o.DATA_FATO, ' ', o.HORA_FATO))) as TEMPO_EMPENHO,

	count(distinct(mil.MATRICULA_INTEGRANTE)) as EFETIVO, -- ok


	case
		when o.NUM_VIATURA NOT IN ('7777777', '8888888', '')
		then count(distinct(o.NUM_VIATURA))
		       
		else (0)
	end	as VIATURAS, -- ok

    case
		when e.PRISAO_APREES in ('FLAGRANTE DE CRIME / CONTRAVENCAO', 'RECAPTURA', 'OUTRAS - PRISAO / APREENSAO') 
		then count(distinct(concat(e.NREDS, e.NOME_ENVOL)))
		
		else (0)
	end	as PESSOAS_PRESAS, -- ok
	case
		when e.PRISAO_APREES in ('FLAGRANTE DE ATO INFRACIONAL') 
		then count(distinct(concat(e.NREDS, e.NOME_ENVOL)))
		       
		else (0)
	end	as PESSOAS_APREENDIDAS, -- ok
	
	case
		when o.COD_DIAO in ('Y10001')
		
        then count(distinct(o.COD_DIAO))
		       
		else (0)
	end	as MANDADOS_BUSCA_APREENSAO, -- ok   
    
	case
		when o.COD_DIAO in ('Y10003', 'Y10005')
		
        then count(distinct(o.COD_DIAO))
		       
		else (0)
	end	as MANDADOS_PRISAO_CUMPRIDOS, -- OK   
    
    
    	case
		when e.PRISAO_APREES in ('MANDADO JUDICIAL') 
		then count(distinct(e.NOME_ENVOL))
		       
		else (0)
	end	as PESSOAS_PRESAS_MANDADO, -- OK
    
		case
		when e.PRISAO_APREES in ('FLAGRANTE DE CRIME / CONTRAVENCAO', 'RECAPTURA', 'OUTRAS - PRISAO / APREENSAO','MANDADO JUDICIAL', 'FLAGRANTE DE ATO INFRACIONAL') 
		AND E.COD_DIAO = 'I04033'
        then count(distinct(e.NOME_ENVOL)) 
		       
		else (0)
	end	as PES_PRESAS_TRAFICO_DROGAS, -- ok

		case
		when e.PRISAO_APREES in ('FLAGRANTE DE CRIME / CONTRAVENCAO', 'RECAPTURA', 'OUTRAS - PRISAO / APREENSAO','MANDADO JUDICIAL', 'FLAGRANTE DE ATO INFRACIONAL') 
		AND E.COD_DIAO = 'B01121'
        then count(distinct(e.NOME_ENVOL)) 
		       
		else (0)
	end	as PES_PRESAS_HOMICIDIO, -- ok
    
		case
		when e.PRISAO_APREES in ('FLAGRANTE DE CRIME / CONTRAVENCAO', 'RECAPTURA', 'OUTRAS - PRISAO / APREENSAO','MANDADO JUDICIAL', 'FLAGRANTE DE ATO INFRACIONAL') 
		AND E.COD_DIAO = 'C01157'
        then count(distinct(e.NOME_ENVOL)) 
		       
		else (0)
	end	as PES_PRESAS_ROUBO, -- ok
    
		case
		when e.PRISAO_APREES in ('FLAGRANTE DE CRIME / CONTRAVENCAO', 'RECAPTURA', 'OUTRAS - PRISAO / APREENSAO','MANDADO JUDICIAL', 'FLAGRANTE DE ATO INFRACIONAL') 
		AND e.COD_DIAO = 'C01155'
        then count(distinct(e.NOME_ENVOL))
		       
		else (0)
	end	as PES_PRESAS_FURTO, -- ok
    
    
case
		when af.TIPO_ARMA IN ('REVOLVER', 'GARRUCHA') 
		then af.QTDE_ARM_FOGO
		       
		else (0)
	end	as REVOLVER, -- ok
    
case
		when af.TIPO_ARMA in ('ESPINGARDA POLVEIRA', 'ESPINGARDA / ESCOPETA', 'CARABINA / RIFLE') 
		then (af.QTDE_ARM_FOGO) -- ok
		       
		else (0)
	end	as ESPINGARDA,-- ok
case
		when af.TIPO_ARMA in ('PISTOLA') 
		then (af.QTDE_ARM_FOGO) 
		       
		else (0)
	end	as PISTOLA,-- ok
    
    case
		when af.TIPO_ARMA in ('OUTROS - TIPO DE ARMA') 
		then (af.QTDE_ARM_FOGO) 
		       
		else (0)
	end	as OUTRAS_ARMAS,-- ok
    
    
        case
		when af.TIPO_ARMA in ('REVOLVER', 'GARRUCHA', 'ESPINGARDA POLVEIRA', 'ESPINGARDA / ESCOPETA', 'CARABINA / RIFLE', 'PISTOLA', 'OUTROS - TIPO DE ARMA') 
		then (af.QTDE_ARM_FOGO) 
		       
		else (0)
	end	as ARMAS_FGO,-- ok
    
    	case
		when m.DESC_TIPO_MATERIAL in ('APETRECHOS, EQUIPAMENTOS, ACESSORIOS, PECAS, CARTUCHOS VAZIOS, SEMI-CARREGADOS OU CARREGADOS E CHUMBO GRANULADO, DESTINADOS A FABRICACAO DE MUNICAO E/OU ARMA DE FOGO DE USO RESTRITO E/OU PROIBIDO',
        'CARTUCHO INTACTO (MUNICAO) DE ARMA DE FOGO DE USO PERMITIDO', 'CARTUCHO INTACTO (MUNICAO) DE CALIBRE RESTRITO', 'CARTUCHO VAZIO DE MUNICAO DE USO RESTRITO',
        'MUNICAO - DEMAIS SUBSTANCIAS, PRODUTOS SUJEITOS AO CONTROLE DO R-105', 'MUNICOES OU DISPOSITIVOS COM EFEITOS PIROTECNICOS, OU DISPOSITIVOS SIMILARES CAPAZES DE PROVOCAR INCENDIO OU EXPLOSOES(SINALIZADORES) (RESTRITO)',
        'OUTROS  - EXPLOSIVOS / MUNICOES / TIRO ESPORTIVO') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as MUNICOES_UN, -- ok
    
    case
		when af.TIPO_ARMA in ('ARMAS DE PRESSAO IGUAL OU INFERIOR A 6MM') 
		then (af.QTDE_ARM_FOGO) 
		       
		else (0)
	end	as ARMAS_DE_PRESSAO,
	case
		when m.DESC_TIPO_MATERIAL = 'SIMULACRO DE ARMA DE FOGO (USO RESTRITO)' 
		then (m.QTDE_MAT_VOL)
		       
		else (0)
	end	as SIMULACRO, 

	case
		when m.DESC_TIPO_MATERIAL = 'OUTROS - INSTRUMENTO PERFURANTE, CORTANTE OU CONTUNDENTE'
		then (m.QTDE_MAT_VOL)
		       
		else (0)
	end	as ARMAS_BRANCA,    
	case
		when m.DESC_TIPO_MATERIAL = 'CRACK EM PEDRAS' 
		then SUM(distinct(M.QTDE_MAT_VOL))
		       
		else (0)
	end	as CRACK_PEDRAS_UN,
    
    case
		when m.DESC_TIPO_MATERIAL IN ('CRACK EM QUILOGRAMAS', 'OUTROS - CRACK') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as CRACK_GR, -- OK
    
	case
		when m.DESC_TIPO_MATERIAL IN ('MACONHA PRENSADA (BARRA / TABLETE)') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as MACONHA_TABLETE_GR,
		
	case
		when m.DESC_TIPO_MATERIAL IN ('BUCHA DE MACONHA') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as MACONHA_BUCHA_UN,
    
	case
		when m.DESC_TIPO_MATERIAL IN ('CIGARRO DE MACONHA') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as CIGARRO_MACONHA_UN,
    
	case
		when m.DESC_TIPO_MATERIAL IN ('OUTROS - MACONHA') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as MACONHA_OUTROS_GR,
    
	case
		when m.DESC_TIPO_MATERIAL IN ('PLANTACAO (PE) DE MACONHA') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as MACONHA_PES_UN,
    
  
 	case
		when m.DESC_TIPO_MATERIAL IN ('SEMENTE DE MACONHA') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as MACONHA_SEMENTE_GR,   
	case
		when m.DESC_TIPO_MATERIAL IN ('PAPELOTES DE COCAINA') 
		then (m.QTDE_MAT_VOL) -- then (m.QTDE_MAT_VOL*d_mat.GRAMAS) 
		       
		else (0)
	end	as COCAINA_PAPELOTE_UN, 
    
    	case
		when m.DESC_TIPO_MATERIAL IN ('PASTA DE COCAINA') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as COCAINA_PASTA_GR,
	case
		when m.DESC_TIPO_MATERIAL IN ('OUTROS - COCAINA') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as COCAINA_OUTROS_GR,  

	case
		when m.DESC_TIPO_MATERIAL IN ('COCAINA EM PO') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as COCAINA_EM_PO_GR,
	case
		when m.DESC_TIPO_MATERIAL IN ('HAXIXE EM BOLA') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as HAXIXE_EM_BOLA_UN,
    
	case
		when m.DESC_TIPO_MATERIAL IN ('HAXIXE EM TABLETE (QUILOGRAMA)') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as HAXIXE_EM_TABLETE_GR,
    
	case
		when m.DESC_TIPO_MATERIAL IN ('OUTROS - HAXIXE') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as HAXIXE_OUTROS_GR,
	case
		when m.DESC_TIPO_MATERIAL IN ('ECSTASY / MDMA') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as ECSTASE_UN,
   
   	case
		when m.DESC_TIPO_MATERIAL IN ('OUTROS - LSD') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as LSD_UN,
    
	case
		when m.DESC_TIPO_MATERIAL IN ('ARTANE', 'DIAZEPAN', 'DIEMPAX', 'INIBEX', 'ROHYPNOL', 'XAROPE', 'OUTROS - MEDICAMENTOS / SINTETICOS', 'CARGA DE MEDICAMENTOS') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as DROGAS_OUTRAS_UN,
    
	case
		when m.DESC_TIPO_MATERIAL IN ('OUTROS - EQUIPAMENTOS PARA DROGAS / NARCOTICOS') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as EQUIP_NARCOTICOS_OUTROS_UN,
    
    
	case
		when m.DESC_TIPO_MATERIAL IN ('MOEDA NACIONAL (REAL)') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as MOEDA_NACIONAL_R$,
    
    	case
		when m.DESC_TIPO_MATERIAL IN ('MOEDA ESTRANGEIRA', 'OUTROS - TIPOS DE MOEDAS') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as MOEDA_OUTRAS_$,
    
   	case
		when m.DESC_TIPO_MATERIAL IN ('TELEFONE CELULAR') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as TELEFONE_CELULAR_UN, 
    
	case
		when m.DESC_TIPO_MATERIAL IN ('MICRO COMPUTADOR') 
		then (m.QTDE_MAT_VOL) 
		       
		else (0)
	end	as MICRO_COMPUTADOR_UN,
	case
		when v.SITUACAO_VEICULO IN ('APREENDIDO') 
		then (v.QTDE_VEIC) 
		       
		else (0)
	end	as VEICULOS_APREENDIDOS,
    case
		when v.SITUACAO_VEICULO IN ('RECUPERADO') 
		then (v.QTDE_VEIC) 
		       
		else (0)
	end	as VEICULOS_RECUPERADOS,
    
 
    
	count(distinct(i.AIT_NUMERO_DOC)) as AIT,
	
    
    case 
		when o.MUNICIPIO 
			in ('CARMO DO CAJURU','CLAUDIO','DIVINOPOLIS','ITATIAIUCU','ITAUNA','SAO GONCALO DO PARA')
        then '23º BPM'
		
        when o.MUNICIPIO 
			in ('IGARATINGA','MARAVILHAS','ONCA DO PITANGUI','PAPAGAIOS', 'PARA DE MINAS','PEQUI','SAO JOSE DA VARGINHA')
        then '19ª CIA PM IND' 
		
        when o.MUNICIPIO 
			in ('ARAUJOS','CONCEICAO DO PARA','LEANDRO FERREIRA','NOVA SERRANA', 'PERDIGAO','PITANGUI')
		then '60º BPM' 

		when o.MUNICIPIO
			in ('ARCOS','BAMBUI','CAMACHO','CORREGO FUNDO','FORMIGA','IGUATAMA','ITAPECERICA', 'MEDEIROS','PAINS','PIMENTA','SAO SEBASTIAO DO OESTE','TAPIRAI')
        then '63º BPM' 
		when o.MUNICIPIO 
			in ('ABAETE','BIQUINHAS','BOM DESPACHO','CEDRO DO ABAETE','CORREGO DANTA','DORES DO INDAIA',
				'ESTRELA DO INDAIA','JAPARAIBA','LAGOA DA PRATA','LUZ','MARTINHO CAMPOS','MOEMA', 'MORADA NOVA DE MINAS','PAINEIRAS',
			'PEDRA DO INDAIA','POMPEU','QUARTEL GERAL','SANTO ANTONIO DO MONTE', 'SERRA DA SAUDADE')
		then '7º BPM' 
		else 'OUTRO' 
        
        end as UEOP
    
    
FROM
		pdca.tbl_ocorrencias as o
		LEFT JOIN pdca.tbl_envolvidos as e
			ON o.NREDS = e.NREDS
		LEFT JOIN pdca.tbl_armas_fgo as af
			ON o.NREDS = af.NREDS
		LEFT JOIN pdca.tbl_veiculos as v
			ON o.NREDS = v.NREDS
		LEFT JOIN pdca.tbl_materiais as m
			ON o.NREDS = m.NREDS
		LEFT JOIN pdca.tbl_infracoes as i
			ON o.NREDS = i.NREDS
		LEFT JOIN pdca.tbl_integrantes as mil
			ON o.NREDS = mil.NREDS
		LEFT JOIN pdca.tbl_d_mat as d_mat
			ON CONCAT(m.DESC_TIPO_MATERIAL, m.UNIDADE_MEDIDA) = CONCAT(d_mat.DESC_TIPO_MATERIAL, d_mat.UNIDADE_MEDIDA)
        
-- where o.nreds = '2019-037893473-001'



GROUP BY o.NREDS;
    