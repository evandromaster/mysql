SELECT 

fnc_ueop(MUNICIPIO) AS UEOP,
COUNT(*) AS OPERACOES_POLICIAIS,
SUM(if(NATCODIGO LIKE 'Y%', 1, 0)) as OPERACOES_POLICIAIS2,
SUM(if(NATCODIGO = 'Y07001', 1, 0)) as OPERACOES_BATIDA_POLICIAL,
SUM(if(NATCODIGO = 'Y04011', 1, 0)) as OPERACOES_BLITZ


FROM ratbos.tbl_rat


		WHERE municipio IN 
        
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
        
		AND DTA_INICIO between '2019-08-01' and '2019-08-31'
        AND NATCODIGO LIKE 'Y%'
        
group by UEOP

;