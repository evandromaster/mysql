select *, right(DTA_INICIO,5)AS ANO FROM rat
where NOM_UNID_RESPONSAVEL like '%/7 RPM%'
and MUNICIPIO in ('ABAETE',
'ARAUJOS',
'ARCOS',
'BAMBUI',
'BIQUINHAS',
'BOM DESPACHO',
'CAMACHO',
'CARMO DO CAJURU',
'CEDRO DO ABAETE',
'CLAUDIO',
'CONCEICAO DO PARA',
'CORREGO DANTA',
'CORREGO FUNDO',
'DIVINOPOLIS',
'DIVINOPOLIS',
'DIVINOPOLIS',
'DORES DO INDAIA',
'ESTRELA DO INDAIA',
'IGARATINGA',
'IGUATAMA',
'ITAPECERICA',
'ITATIAIUCU',
'ITAUNA',
'JAPARAIBA',
'LAGOA DA PRATA',
'LEANDRO FERREIRA',
'LUZ',
'MARAVILHAS',
'MARTINHO CAMPOS',
'MEDEIROS',
'MOEMA',
'MORADA NOVA DE MINAS',
'NOVA SERRANA',
'ONCA DO PITANGUI',
'PAINEIRAS',
'PAINS',
'PAPAGAIOS',
'PARA DE MINAS',
'PEDRA DO INDAIA',
'PEQUI',
'PERDIGAO',
'PIMENTA',
'PITANGUI',
'POMPEU',
'QUARTEL GERAL',
'SANTO ANTONIO DO MONTE',
'SAO GONCALO DO PARA',
'SAO JOSE DA VARGINHA',
'SAO SEBASTIAO DO OESTE',
'SERRA DA SAUDADE',
'TAPIRAI',
'FORMIGA')