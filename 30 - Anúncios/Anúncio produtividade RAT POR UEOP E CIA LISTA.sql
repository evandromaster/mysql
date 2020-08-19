SELECT      fnc_ueop(r.MUNICIPIO) AS UEOP,
			fnc_companhia_rat_bos_7rpm (r.MUNICIPIO, r.RATNUM_ATIVIDADE, r.NOME_BAIRRO, r.LOGRADOURO, r.DES_ENDERECO, r.LOGRADOURO2, r.DES_ENDERECO2, r.COMPLEMENTO_ENDERECO, r.COMPLEMENTO_ALFA, r.LATITUDE) as COMPANHIA,
            -- fnc_companhia_rat_bos_div (r.MUNICIPIO, r.RATNUM_ATIVIDADE, r.NOME_BAIRRO, r.LOGRADOURO, r.DES_ENDERECO, r.LOGRADOURO2, r.DES_ENDERECO2, r.COMPLEMENTO_ENDERECO, r.COMPLEMENTO_ALFA, r.LATITUDE) as COMPANHIA,
			 -- fnc_companhia_rat_bos_nse (r.MUNICIPIO, r.RATNUM_ATIVIDADE, r.NOME_BAIRRO, r.LOGRADOURO, r.DES_ENDERECO, r.LOGRADOURO2, r.DES_ENDERECO2, r.COMPLEMENTO_ENDERECO, r.COMPLEMENTO_ALFA, r.LATITUDE) as COMPANHIAnse,
			-- fnc_cia_sede_rat_bos_7rpm (r.MUNICIPIO, r.RATNUM_ATIVIDADE, r.NOME_BAIRRO, r.LOGRADOURO, r.DES_ENDERECO, r.LOGRADOURO2, r.DES_ENDERECO2, r.COMPLEMENTO_ENDERECO, r.COMPLEMENTO_ALFA, r.LATITUDE) as CIA_SEDE,
			r.RATNUM_ATIVIDADE,
            e.NUM_MATRICULA,
            e.NOM_CARGO,
            e.NOME,
            r.NOM_UNID_RESPONSAVEL,
			r.NATCODIGO,
			r.NATDESCRICAO,
			r.MUNICIPIO,
		--  p.QUANTIDADE,
        
-- ------------------------------------------------------------------TAXI INICIO		
	SUM(DISTINCT(case
		when r.NATCODIGO = 'Y01001'
        and descricao  = 'Qde de taxi fiscalizados'
		then p.QUANTIDADE	       
	else (0)
	end))	as TAXIS_FICALIZADOS,


	SUM(DISTINCT(case
					when r.NATCODIGO = 'Y01001'
					and p.DESCRICAO  = 'Qde de pessoas abordadas'
					then p.QUANTIDADE
						   
				else (0)
	end))	as TAXI_PESSOAS_ABORDADAS,
    
    
	
    SUM(DISTINCT(if(r.NATCODIGO = 'Y01001', 1, 0))) as 'QTDE_OPER_TAXI',        
-- ----------------------------------------------------------------- TAXI FIM   

-- ------------------------------------------------------------------ONIBUS INICIO		
	SUM(DISTINCT(case
		when r.NATCODIGO = 'Y01002'
        and descricao  = 'Qde de onibus / coletivo fiscalizados'
		then p.QUANTIDADE	       
	else (0)
	end))	as ONIBUS_FICALIZADOS,


	SUM(DISTINCT(case
					when r.NATCODIGO = 'Y01002'
					and p.DESCRICAO  = 'Qde de pessoas abordadas'
					then p.QUANTIDADE
						   
				else (0)
	end))	as ONIBUS_PESSOAS_ABORDADAS,
    
    
	
    SUM(DISTINCT(if(r.NATCODIGO = 'Y01002', 1, 0))) as 'QTDE_OPER_ONIBUS',        
-- ----------------------------------------------------------------- ONIBUS FIM          
        
-- ------------------------------------------------------------------MOTOS INICIO		
	SUM(DISTINCT(case
		when r.NATCODIGO = 'Y01003'
        and p.DESCRICAO  = 'Qde de motocicletas fiscalizadas'
		then p.QUANTIDADE	       
	else (0)
	end))	as MOTOS_FICALIZADAS,


	SUM(DISTINCT(case
					when r.NATCODIGO = 'Y01003'
					and p.DESCRICAO  = 'Qde de pessoas abordadas'
					then p.QUANTIDADE
						   
				else (0)
	end))	as MOTOS_PESSOAS_ABORDADAS,
    
    
	
    SUM(DISTINCT(if(r.NATCODIGO = 'Y01003', 1, 0))) as 'QTDE_OPER_MOTO',        
-- ----------------------------------------------------------------- MOTOS FIM     
-- ------------------------------------------------------------------MOTOS INICIO		
	SUM(DISTINCT(case
		when r.NATCODIGO = 'Y07001'
        and p.DESCRICAO  = 'Qde de veiculos fiscalizados'
		then p.QUANTIDADE	       
	else (0)
	end))	as BATIDA_POLICIAL_VEIC_FISC,


	SUM(DISTINCT(case
					when r.NATCODIGO = 'Y07001'
					and p.DESCRICAO  = 'Qde de pessoas abordadas'
					then p.QUANTIDADE
						   
				else (0)
	end))	as BATIDA_POLICIAL_PESSOAS_ABORDADAS,
    
    
	
    SUM(DISTINCT(if(r.NATCODIGO = 'Y07001', 1, 0))) as 'QTDE_OPER_BATIDA_POLICIAL'        
-- ----------------------------------------------------------------- MOTOS FIM        
        
     
        
        FROM
			tbl_rat AS r
					
		LEFT OUTER JOIN
			tbl_rat_produtividade AS p
		ON p.RATNUM_ATIVIDADE = r.RATNUM_ATIVIDADE

		LEFT OUTER JOIN
			tbl_rat_efetivos AS e
		ON
			r.RATNUM_ATIVIDADE = e.NUM_ATIVIDADE
			
		LEFT OUTER JOIN
			tbl_rat_viaturas AS v
		ON
			v.NUM_ATIVIDADE = r.RATNUM_ATIVIDADE
						  
		WHERE r.municipio IN 
        
        ('IGARATINGA',
							'MARAVILHAS',
							'ONCA DO PITANGUI',
							'PAPAGAIOS',
							'PARA DE MINAS',
							'PEQUI',
							'SAO JOSE DA VARGINHA',
							'CARMO DO CAJURU',
							'CLAUDIO',
							'DIVINOPOLIS',
							'ITATIAIUCU',
							'ITAUNA',
							'SAO GONCALO DO PARA',
							'ARAUJOS',
							'CONCEICAO DO PARA',
							'LEANDRO FERREIRA',
							'NOVA SERRANA',
							'PERDIGAO',
							'PITANGUI',
							'ARCOS',
							'BAMBUI',
							'CAMACHO',
							'CORREGO FUNDO',
							'FORMIGA',
							'IGUATAMA',
							'ITAPECERICA',
							'MEDEIROS',
							'PAINS',
							'PIMENTA',
							'SAO SEBASTIAO DO OESTE',
							'TAPIRAI',
							'ABAETE',
							'BIQUINHAS',
							'BOM DESPACHO',
							'CEDRO DO ABAETE',
							'CORREGO DANTA',
							'DORES DO INDAIA',
							'ESTRELA DO INDAIA',
							'JAPARAIBA',
							'LAGOA DA PRATA',
							'LUZ',
							'MARTINHO CAMPOS',
							'MOEMA',
							'MORADA NOVA DE MINAS',
							'PAINEIRAS',
							'PEDRA DO INDAIA',
							'POMPEU',
							'QUARTEL GERAL',
							'SANTO ANTONIO DO MONTE',
							'SERRA DA SAUDADE')
        
		AND r.DTA_INICIO between '2019-05-21' and '2019-05-31'
        -- AND NATCODIGO IN ('Y04012','Y07001', 'Y07003', 'Y07004', 'Y07005', 'Y01001', 'Y01002', 'Y01003')
		AND r.NATCODIGO IN ('Y01001','Y01002', 'Y01003', 'Y07001')
      --  and descricao  = 'Qde de motocicletas fiscalizadas'
       -- AND r.RATNUM_ATIVIDADE = '2019-025600369-001'
       -- GROUP BY P.DESCRICAO
       GROUP BY r.RATNUM_ATIVIDADE
	;