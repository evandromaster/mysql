select o.NREDS, o.MUNICIPIO, o.DATA_FATO, o.COD_DIAO, o.UN_REGISTRO,
(timediff(concat(o.DATA_COM, ' ', o.HORA_COM), concat(o.DATA_FATO, ' ', o.HORA_FATO))) as DIFER_HORA,
-- (timediff(concat(o.DATA_COM, ' ', o.HORA_COM), concat(o.DATA_FATO, ' ', o.HORA_FATO))) as TEMPO_EMPENHO,

	sum(count(distinct(MATRICULA_INTEGRANTE))) as efetivo,
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
        
where  o.MUNICIPIO IN ('DIVINOPOLIS','ITAUNA','ITATIAIUCU','CARMO DO CAJURU','SAO GONCALO DO PARA','CLAUDIO')
GROUP BY o.ueop;