set @mes = 4;
set @ano = 2019;

select MUNICIPIO, CIA_SEDE, SETOR,

-- RQV ---- RQV ---- RQV ---- RQV ---- RQV ---- RQV ---- RQV ---- RQV ---- RQV ---- RQV ---- RQV ---- RQV ---- RQV ---- RQV ---- RQV ---- RQV ---- RQV ---- RQV --
sum(case
when EFICIENCIA = 1 and month(DTA_INICIO) = @mes  and year(DTA_INICIO) = @ano and NATCODIGO in ('Y07001', 'Y07003', 'Y07004', 'Y07005') then 1 else 0 -- EFICIENCIA
end) as Eficiencia_RQV,

sum(case
when EFICIENCIA = 1 and month(DTA_INICIO) <= @mes and year(DTA_INICIO) = @ano  and NATCODIGO in ('Y07001', 'Y07003', 'Y07004', 'Y07005') then 1 else 0 -- EFICIENCIA
end) as Eficiencia_RQV_ac,

sum(case
when EFICIENCIA_EFICACIA = 1 and month(DTA_INICIO) = @mes  and year(DTA_INICIO) = @ano  and NATCODIGO in ('Y07001', 'Y07003', 'Y07004', 'Y07005') then 1 else 0 -- EFICIENCIA_EFICACIA
end) as Eficiencia_Eficacia_RQV,

sum(case
when EFICIENCIA_EFICACIA = 1 and month(DTA_INICIO) <= @mes and year(DTA_INICIO) = @ano  and NATCODIGO in ('Y07001', 'Y07003', 'Y07004', 'Y07005') then 1 else 0 -- EFICIENCIA_EFICACIA
end) as Eficiencia_Eficacia_RQV_ac,

sum(case
when EFETIVIDADE_TOTAL = 1 and month(DTA_INICIO) = @mes and year(DTA_INICIO) = @ano  and NATCODIGO in ('Y07001', 'Y07003', 'Y07004', 'Y07005') then 1 else 0 -- reuniões do mês atual
end) as Efetividade_RQV,

sum(case
when EFETIVIDADE_TOTAL = 1 and month(DTA_INICIO) <= @mes and year(DTA_INICIO) = @ano  and NATCODIGO in ('Y07001', 'Y07003', 'Y07004', 'Y07005') then 1 else 0 -- reuniões do mês atual
end) as Efetividade_RQV_ac,
-- LEI SECA ---- LEI SECA ---- LEI SECA ---- LEI SECA ---- LEI SECA ---- LEI SECA ---- LEI SECA ---- LEI SECA ---- LEI SECA ---- LEI SECA ---- LEI SECA ---- LEI SECA --
sum(case
when EFICIENCIA = 1 and month(DTA_INICIO) = @mes  and year(DTA_INICIO) = @ano and NATCODIGO in ('Y04012') then 1 else 0 -- EFICIENCIA
end) as Eficiencia_LEI_SECA,

sum(case
when EFICIENCIA = 1 and month(DTA_INICIO) <= @mes and year(DTA_INICIO) = @ano  and NATCODIGO in ('Y04012') then 1 else 0 -- EFICIENCIA
end) as Eficiencia_LEI_SECA_ac,

sum(case
when EFICIENCIA_EFICACIA = 1 and month(DTA_INICIO) = @mes  and year(DTA_INICIO) = @ano  and NATCODIGO in ('Y04012') then 1 else 0 -- EFICIENCIA_EFICACIA
end) as Eficiencia_Eficacia_LEI_SECA,

sum(case
when EFICIENCIA_EFICACIA = 1 and month(DTA_INICIO) <= @mes and year(DTA_INICIO) = @ano  and NATCODIGO in ('Y04012') then 1 else 0 -- EFICIENCIA_EFICACIA
end) as Eficiencia_Eficacia_LEI_SECA_ac,

sum(case
when EFETIVIDADE_TOTAL = 1 and month(DTA_INICIO) = @mes and year(DTA_INICIO) = @ano  and NATCODIGO in ('Y04012') then 1 else 0 -- reuniões do mês atual
end) as Efetividade_LEI_SECA,

sum(case
when EFETIVIDADE_TOTAL = 1 and month(DTA_INICIO) <= @mes and year(DTA_INICIO) = @ano  and NATCODIGO in ('Y04012') then 1 else 0 -- reuniões do mês atual
end) as Efetividade_LEI_SECA_ac



from ratbos.tbl_rat_resultados
where MUNICIPIO in ('DIVINOPOLIS', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')

AND NOM_UNID_RESPONSAVEL not in (SELECT UN_REGISTRO FROM tbl_un_especializada)

-- AND NOM_UNID_RESPONSAVEL NOT IN ('1 GP/1 PEL RV/7 CIA PM IND MAT/7 RPM','1 PEL RV/7 CIA PM IND MAT/7 RPM','1 GP/1 PEL RV/7 CIA PM RV/BPMRV/CPRV', '3 GP/1 PEL MAMB/7 CIA PM MAMB/BPM MAMB', 
-- '3 PEL MAMB/7 CIA PM IND MAT/7 RPM','1 PEL MAMB/7 CIA PM MAMB/BPM MAMB', 'NUCLEO DE APOIO ADMINISTRATIVO E DE FISCALIZACAO','3 GP/1 PEL MAMB/7 CIA PM MAMB/BPM MAMB', '10BBM/1CIA/3PEL (DIVINOPOLIS)', 
-- '1 GP/1 PEL MAMB/7 CIA PM MAMB/BPM MAMB', 'REGIONAL OLIVEIRA', '1 GP/2 PEL MAMB/7 CIA PM IND MAT/7 RPM', '1 PEL RV/7 CIA PM RV/BPMRV/CPRV', '7 CIA PM MAMB/BPM MAMB/CPMAMB', '7 CIA PM RV/BPMRV/CPRV',
-- 'NUCLEO ADMINISTRATIVO E DE FISCALIZACAO', '7 CIA PM IND MAT/7 RPM', '1 CIA ROTAM/BTL ROTAM/CPE', '7 CIA PM IND PE/7 RPM', 'COORDENADORIA OESTE - FORMIGA')
AND NATCODIGO IN ('Y04012','Y07001', 'Y07003', 'Y07004', 'Y07005')
group by MUNICIPIO, CIA_SEDE
ORDER BY MUNICIPIO, CIA_SEDE;