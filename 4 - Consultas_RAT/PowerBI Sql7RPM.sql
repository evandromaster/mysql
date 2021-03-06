select RATNUM_ATIVIDADE,NATCODIGO,NATDESCRICAO,DTA_INICIO,HRA_INICIO,
NOM_UNID_RESPONSAVEL, concat(TIPO_LOGRADOURO,", ",LOGRADOURO,", ",NUM_ENDERECO, ", ",NOME_BAIRRO) as End, MUNICIPIO, 
LATITUDE,LONGITUDE,NOM_UNIDADE_AREA,DIGITADOR,concat_ws(' ',DTA_INICIO, HRA_INICIO) as 'Data-Hora INICIO',
concat_ws(' ',DTA_TERMINO, HRA_TERMINO) as 'Data-Hora TÉRMINO',
left(DIGITADOR, 2) as Orgão,
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
else 'outro' end as Cia
from rat
where DTA_INICIO BETWEEN '2017-01-01' AND '2018-12-31'
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
-- and NATCODIGO in ('Y07001','Y07003','Y07004','Y07005')
order by DTA_INICIO desc