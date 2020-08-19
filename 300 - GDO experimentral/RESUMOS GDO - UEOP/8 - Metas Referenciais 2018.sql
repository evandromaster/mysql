SELECT 
	MUNICIPIO, 
    CIA_SEDE, 
    SUM(CV) AS CV_2018,  
    ROUND((SUM(CV)) * 0.895854398382204,2) AS META_CV_2018 

FROM gdo.vw_valid_gdo_ref_2018

WHERE MUNICIPIO in ('DIVINOPOLIS', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')
AND CV = 1

AND DATA_FATO BETWEEN '2018-01-01' AND '2018-03-31'

GROUP BY CIA_SEDE WITH ROLLUP;
-- --------------------------------------------------------CV

SELECT 
	MUNICIPIO, 
    CIA_SEDE, 
    SUM(TQF) AS TQF_2018,  
    ROUND((SUM(TQF)) * 0.92992700729927,2) AS META_TQF_2018 

FROM gdo.vw_valid_gdo_ref_2018

WHERE MUNICIPIO in ('DIVINOPOLIS', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')
AND TQF = 1

AND DATA_FATO BETWEEN '2018-01-01' AND '2018-03-31'

GROUP BY CIA_SEDE WITH ROLLUP;
-- --------------------------------------------------------TQF
SELECT 
	MUNICIPIO, 
    CIA_SEDE, 
    SUM(THC) AS hOM_2018,  
    ROUND((SUM(THC)) * 0.863636363636364,2) AS META_TQF_2018 

FROM gdo.vw_valid_gdo_ref_2018

WHERE MUNICIPIO in ('DIVINOPOLIS', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')
AND THC = 1

AND DATA_FATO BETWEEN '2018-03-01' AND '2018-03-31'

GROUP BY CIA_SEDE WITH ROLLUP;
-- --------------------------------------------------------THC


set @mes = 3;
set @ano = 2018;

select MUNICIPIO, CIA_SEDE,


sum(case
when CV = 1 and month(DH_FATO) = @mes and year(DH_FATO) = @ano and AUDITORIA = 1 then 1 else 0
end) as CV_META_mes,

sum(case
when CV = 1 and month(DH_FATO) <= @mes and year(DH_FATO) = @ano AND Auditoria = 1 THEN 1 else 0
end) as CV_META_ac,


sum(case
when CV = 1 and month(DH_FATO) = @mes and year(DH_FATO) = @ano 	AND (COD_DIAO = 'B01121' AND T_C = 'CONSUMADO') then 1 else 0
end) as HC_mes,

sum(case
when CV = 1 and month(DH_FATO) <= @mes and year(DH_FATO) = @ano AND (COD_DIAO = 'B01121' AND T_C = 'CONSUMADO') then 1 else 0
end) as HC_ac,

sum(case
when TRCV = 1 and month(DH_FATO) = @mes and year(DH_FATO) = @ano then 1 else 0
end) as TRCV,

sum(case
when TRCV = 1 and month(DH_FATO) <= @mes and year(DH_FATO) = @ano then 1 else 0
end) as TRCV_ac,



sum(case
when TQF = 1 and month(DH_FATO) = @mes and year(DH_FATO) = @ano then 1 else 0
end) as TQF,

sum(case
when TQF = 1 and month(DH_FATO) <= @mes and year(DH_FATO) = @ano then 1 else 0
end) as TQF_ac,





sum(case
when TCAF = 1 and month(DH_FATO) = @mes and year(DH_FATO) = @ano then 1 else 0
end) as TCAF,

sum(case
when TCAF = 1 and month(DH_FATO) <= @mes and year(DH_FATO) = @ano then 1 else 0
end) as TCAF_ac



from vw_valid_gdo_ref_2018



where MUNICIPIO in ('DIVINOPOLIS', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA')

group by Cia_SEDE WITH ROLLUP;
