set @mes = 5;
set @ano = 2019;

select UEOP,

sum(case
when natCODIGO like 'a19%' and month(DTA_INICIO) = @mes  and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
end) as InterCom,

sum(case
when natCODIGO like 'a19%' and month(DTA_INICIO) <= @mes and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
end) as InterCom_ac,

sum(case
when natCODIGO = 'a20001' and month(DTA_INICIO) = @mes and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
end) as Visita_TranQ,

sum(case
when natCODIGO = 'a20001' and month(DTA_INICIO) <= @mes and year(DTA_INICIO) = @ano then 1 else 0 -- reuniões do mês atual
end) as Visita_TranQ_ac

from ratbos.vw_valid_bos
where  MUNICIPIO in ('IGARATINGA',
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

group by UEOP WITH ROLLUP;