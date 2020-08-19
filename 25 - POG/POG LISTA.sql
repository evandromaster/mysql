SELECT *,

case when MUNICIPIO in ('CARMO DO CAJURU','CLAUDIO','DIVINOPOLIS','ITATIAIUCU','ITAUNA',
'SAO GONCALO DO PARA') then '23º BPM'
when MUNICIPIO in ('IGARATINGA','MARAVILHAS','ONCA DO PITANGUI','PAPAGAIOS',
'PARA DE MINAS','PEQUI','SAO JOSE DA VARGINHA') then '19ª Cia PM Ind' 
when MUNICIPIO in ('ARAUJOS','CONCEICAO DO PARA','LEANDRO FERREIRA','NOVA SERRANA',
'PERDIGAO','PITANGUI') then '60º BPM' 
when MUNICIPIO in ('ARCOS','BAMBUI','CAMACHO','CORREGO FUNDO','FORMIGA','IGUATAMA','ITAPECERICA',
'MEDEIROS','PAINS','PIMENTA','SAO SEBASTIAO DO OESTE','TAPIRAI') then '63º BPM' 
when MUNICIPIO in ('ABAETE','BIQUINHAS','BOM DESPACHO','CEDRO DO ABAETE','CORREGO DANTA',
'DORES DO INDAIA','ESTRELA DO INDAIA','JAPARAIBA','LAGOA DA PRATA','LUZ','MARTINHO CAMPOS','MOEMA',
'MORADA NOVA DE MINAS','PAINEIRAS','PEDRA DO INDAIA','POMPEU','QUARTEL GERAL','SANTO ANTONIO DO MONTE',
'SERRA DA SAUDADE') then '7º BPM' 
else 'outro' end as Unidade,
case when MUNICIPIO in ('CARMO DO CAJURU','CLAUDIO','DIVINOPOLIS','ITATIAIUCU','ITAUNA',
'SAO GONCALO DO PARA') then '23º BPM'
when MUNICIPIO in ('IGARATINGA','MARAVILHAS','ONCA DO PITANGUI','PAPAGAIOS',
'PARA DE MINAS','PEQUI','SAO JOSE DA VARGINHA') then '19ª Cia PM Ind' 
when MUNICIPIO in ('ARAUJOS','CONCEICAO DO PARA','LEANDRO FERREIRA','NOVA SERRANA',
'PERDIGAO','PITANGUI') then '60º BPM' 
when MUNICIPIO in ('ARCOS','BAMBUI','CAMACHO','CORREGO FUNDO','FORMIGA','IGUATAMA','ITAPECERICA',
'MEDEIROS','PAINS','PIMENTA','SAO SEBASTIAO DO OESTE','TAPIRAI') then '63º BPM' 
when MUNICIPIO in ('ABAETE','BIQUINHAS','BOM DESPACHO','CEDRO DO ABAETE','CORREGO DANTA',
'DORES DO INDAIA','ESTRELA DO INDAIA','JAPARAIBA','LAGOA DA PRATA','LUZ','MARTINHO CAMPOS','MOEMA',
'MORADA NOVA DE MINAS','PAINEIRAS','PEDRA DO INDAIA','POMPEU','QUARTEL GERAL','SANTO ANTONIO DO MONTE',
'SERRA DA SAUDADE') then '7º BPM' 
else 'outro' end as UEOP

-- count(*) as Freq




FROM ratbos.tbl_rat
WHERE DTA_INICIO BETWEEN '2019-01-01' and '2019-12-31'
and MUNICIPIO in ('IGARATINGA',
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

 AND NATCODIGO  IN ('Y01001', 'Y02005', 'Y04005', 'Y07008', 'Y08005', 'Y09003', 'Y10003', 'Y15010', 'Y01002', 'Y02006', 'Y04007', 'Y07009', 'Y08006', 'Y09004', 'Y10004', 'Y15020',
 'Y01003', 'Y02007', 'Y04008', 'Y07010', 'Y08007', 'Y09005', 'Y10007', 'Y15030', 'Y01999', 'Y02999', 'Y04010', 'Y07011', 'Y08008', 'Y09006', 'Y10008', 'Y15040', 'Y02001', 'Y04001',
 'Y04999', 'Y07999', 'Y08009', 'Y09007', 'Y10009', 'Y15050', 'Y02002', 'Y04002', 'Y07002', 'Y08001', 'Y08010', 'Y09999', 'Y10010', 'Y15060', 'Y02003', 'Y04003', 'Y07006', 'Y08002',
 'Y08999', 'Y10001', 'Y10999', 'Y15070', 'Y02004', 'Y04004', 'Y07007', 'Y08003', 'Y09001', 'Y10002', 'Y15001', 'Y15099')
-- AND fnc_pog(NATCODIGO) = TRUE

-- group by ueop
;