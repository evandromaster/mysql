CREATE OR REPLACE VIEW  IC_VT AS
select COMPLEMENTO_ALFA as Cia, 
sum(if(natCODIGO like 'a19%', 1, 0)) as 'InterCom',
sum(if(natCODIGO like 'a20001', 1, 0)) as 'VisitTranq',
count(*) soma
from bos
where DTA_INICIO between '2018-01-01' and '2018-05-31'
and MUNICIPIO IN ('divinopolis', 'itauna', 'itatiaiucu', 'claudio', 'carmo do cajuru', 'sao goncalo do para')
and ((natCODIGO like 'a19%') or (natCODIGO like 'a20001'))
group by COMPLEMENTO_ALFA;



-- SELECT * FROM IC_VT;


-- Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'IF NOT EXISTS IC_VT as select COMPLEMENTO_ALFA as Cia,  sum(if(natCODIGO like 'a' at line 1

