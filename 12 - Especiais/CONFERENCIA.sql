create table tbl_conferencia
	(
    ID_CONF int auto_increment primary key,
    NREDS varchar(18),
    AUDITORIA varchar(20),
    DATA_FATO date,
    MUNICIPIO varchar(40),
    
    COD_DIAO char(6)
    );
    
    
-- select * from vw_valid_crimes
-- where
-- NREDS not in (select NREDS from tbl_conferencia where AUDITORIA = 'CONTAR' and RIGHT(NREDS,3) = '001')
-- and
-- month(DATA_FATO) <= 10
-- and MUNICIPIO IN ('DIVINOPOLIS', 'ITAUNA', 'ITATIAIUCU', 'CARMO DO CAJURU', 'SAO GONCALO DO PARA', 'CLAUDIO')
-- and CV = 1
-- and AUDITORIA = 1
-- ;



select * from tbl_conferencia
where
AUDITORIA = 'CONTAR'
AND
RIGHT(NREDS,3) = '001'

AND

NREDS not in (select NREDS from vw_valid_crimes where
month(DATA_FATO) not in (11, 12)
and MUNICIPIO IN ('DIVINOPOLIS', 'ITAUNA', 'ITATIAIUCU', 'CARMO DO CAJURU', 'SAO GONCALO DO PARA', 'CLAUDIO')
and CV = 1
and AUDITORIA = 1);

select * from vw_valid_crimes
where
month(DATA_FATO) not in (11, 12)
and MUNICIPIO IN ('DIVINOPOLIS', 'ITAUNA', 'ITATIAIUCU', 'CARMO DO CAJURU', 'SAO GONCALO DO PARA', 'CLAUDIO')
and CV = 1
and AUDITORIA = 1;