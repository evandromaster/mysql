SET @rank=0;

SELECT @rank:=@rank+1 AS RANK,


  MUNICIPIO, 
  
  sum(if(month(DTA_INICIO) = 2, 1, 0)) as 'FEV',
sum(if(month(DTA_INICIO) = 3, 1, 0)) as 'MAR',
sum(if(month(DTA_INICIO) = 4, 1, 0)) as 'ABR',
sum(if(month(DTA_INICIO) = 5, 1, 0)) as 'MAI',
sum(if(month(DTA_INICIO) = 6, 1, 0)) as 'JUN',
sum(if(month(DTA_INICIO) = 7, 1, 0)) as 'JUL',
sum(if(month(DTA_INICIO) = 8, 1, 0)) as 'AGO',
sum(if(month(DTA_INICIO) = 9, 1, 0)) as 'SET',
sum(if(month(DTA_INICIO) = 10,1, 0)) as 'OUT',
sum(if(month(DTA_INICIO) = 11,1, 0)) as 'NOV',
sum(if(month(DTA_INICIO) = 12,1, 0)) as 'DEZ',
count(year(DTA_INICIO))as 'Total',
  
  
  
  COUNT(*) AS QTDE FROM seo.tbl_rat

where DTA_INICIO between '2019-02-04' and '2019-12-18'

and MUNICIPIO /*MUNICIPIOS DA 7RPM*/ in ('IGARATINGA',
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

-- AND NATCODIGO = 'Y10001'

group by MUNICIPIO WITH ROLLUP



;