set @periodo_anterior_inicio  = '2018-04-01'; set @periodo_anterior_fim  = '2018-04-01';
set @periodo_anterior_parcial_inicio  = '2018-04-01'; set @periodo_parcial_anterior_fim  = '2018-04-01';
set @periodo_atual_inicio  = '2019-01-01'; set @periodo_atual_fim  = '2019-04-01';

select case when MUNICIPIO in ('CARMO DO CAJURU','CLAUDIO','DIVINOPOLIS','ITATIAIUCU','ITAUNA',
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
else 'TOTAL' end as UNIDADE, MUNICIPIO, CIA_SEDE, SETOR,

sum(case
when DATA_FATO between @periodo_anterior_inicio and @periodo_anterior_fim then 1 else 0 -- período integral
end)   as 'OCORRENCIAS TODAS 2018',

sum(case
when DATA_FATO between @periodo_anterior_parcial_inicio and @periodo_parcial_anterior_fim then 1 else 0
end) AND CV = 1 as 'OCORRENCIAS CV 2018',

sum(case
when DATA_FATO between @periodo_atual_inicio and @periodo_atual_fim then 1 else 0
end) as 'OCORRENCIAS 2019',

count(*) as TOTAL,

round((sum(case
when DATA_FATO between @periodo_atual_inicio and @periodo_atual_fim then 1 else 0
end) - sum(case
when DATA_FATO between @periodo_anterior_parcial_inicio and @periodo_parcial_anterior_fim then 1 else 0
end))/ sum(case
when DATA_FATO between @periodo_anterior_parcial_inicio and @periodo_parcial_anterior_fim then 1 else 0
end)*100,2) as Variacao


FROM vw_valid_crimes_setor
 
 -- ((V2-V1)/V1 × 100) LOGICA PARA O CALCULO DE  VARIAÇÃO PERCENTUAL

where MUNICIPIO in ('CARMO DO CAJURU','CLAUDIO','DIVINOPOLIS','ITATIAIUCU','ITAUNA',
'SAO GONCALO DO PARA')
-- and COD_DIAO like 'C%'
AND CV = 1

group by SETOR WITH ROLLUP