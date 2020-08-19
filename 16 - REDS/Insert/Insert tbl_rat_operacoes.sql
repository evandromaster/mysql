
TRUNCATE tbl_rat_operacoes;
INSERT INTO
	tbl_rat_operacoes
    
    
    (
		SELECT
			r.RATNUM_ATIVIDADE,
			r.NATCODIGO,
			r.NATDESCRICAO,
			r.DTA_HRA_INCLUSAO, 
			r.DTA_INICIO,
			r.HRA_INICIO,
			r.DTA_TERMINO,
			r.HRA_TERMINO,
			r.DES_ALVO_EVENTO,
			r.DES_LUGAR,
			r.NOM_OPERACAO,
			r.COD_UNIDADE_SERVICO,
			r.NOM_UNID_RESPONSAVEL,
			r.TIPO_LOGRADOURO,
			r.LOGRADOURO,
			r.DES_ENDERECO,
			r.NUM_ENDERECO,
			r.COMPLEMENTO_ALFA,
			r.COMPLEMENTO_ENDERECO,
			r.NUM_COMPLEMENTAR,
			r.COD_BAIRRO,
			r.NOME_BAIRRO,
			r.TIPO_LOGRADOURO2,
			r.LOGRADOURO2,
			r.DES_ENDERECO2,
			r.COD_MUNICIPIO,
			r.MUNICIPIO,
			r.LATITUDE,
			r.LONGITUDE,
			r.COD_UNIDADE_AREA,
			r.NOM_UNIDADE_AREA,
			r.DIGITADOR,
			#################################################################################
			-- (timediff(concat(time_to_sec(r.DTA_TERMINO, ' ', r.HRA_TERMINO)), concat(time_to_sec(r.DTA_INICIO, ' ', r.HRA_INICIO)))) as TEMPO_EXEC,
            time_to_sec((timediff(concat(r.DTA_TERMINO, ' ', r.HRA_TERMINO), concat(r.DTA_INICIO, ' ', r.HRA_INICIO)))) as TEMPO_EXEC,
			-- '00:30:00.000000' as TEMPO_EXEC,
            count(distinct(e.num_matricula)) as EFETIVO,
            count(distinct(v.NUM_PREFIXO)) as VIATURAS,
            #################################################################################
             -- --------------------------------------------------------------------------------------------------------------------------INICIO EFICIENCIA

            fnc_ueop(r.MUNICIPIO),

			fnc_companhia_rat_bos_7rpm (r.MUNICIPIO, r.RATNUM_ATIVIDADE, r.NOME_BAIRRO, r.LOGRADOURO, r.DES_ENDERECO, r.LOGRADOURO2, r.DES_ENDERECO2, r.COMPLEMENTO_ENDERECO, r.COMPLEMENTO_ALFA, r.LATITUDE)
				as COMPANHIA,
			fnc_fracao_rat_bos_7rpm (r.MUNICIPIO, r.RATNUM_ATIVIDADE, r.NOME_BAIRRO, r.LOGRADOURO, r.DES_ENDERECO, r.LOGRADOURO2, r.DES_ENDERECO2, r.COMPLEMENTO_ENDERECO, r.COMPLEMENTO_ALFA, r.LATITUDE)
				as FRACAO,
			fnc_setor_rat_bos_7rpm(r.MUNICIPIO , r.RATNUM_ATIVIDADE, r.NOME_BAIRRO, r.LOGRADOURO, r.DES_ENDERECO, r.LOGRADOURO2, r.DES_ENDERECO2, r.COMPLEMENTO_ENDERECO, r.COMPLEMENTO_ALFA, r.LATITUDE)
					as SETOR,
			fnc_tipo_validador_rat_bos (r.MUNICIPIO, r.RATNUM_ATIVIDADE, r.NOME_BAIRRO, r.LOGRADOURO, r.DES_ENDERECO, r.LOGRADOURO2, r.DES_ENDERECO2, r.COMPLEMENTO_ENDERECO, r.COMPLEMENTO_ALFA, r.LATITUDE)
				as VALIDADOR          
            
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
        
		AND r.DTA_INICIO between '2019-01-01' and '2019-12-01'
        AND NATCODIGO IN ('Y04012','Y07001', 'Y07003', 'Y07004', 'Y07005')
     -- AND NATCODIGO IN ('Y04012','Y07001', 'Y07003', 'Y07004', 'Y07005', 'Y01001', 'Y01002', 'Y01003')
        GROUP BY r.RATNUM_ATIVIDADE
	);