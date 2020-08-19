show databases;
use test_rat;
show tables;

select * from bos
WHERE MUNICIPIO = 'DIVINOPOLIS' AND
NOME_BAIRRO = 'SAO JOSE';

select NOM_UNIDADE_AREA, NATCODIGO, count(RATNUM_ATIVIDADE) as QTD
from bos
group by NATCODIGO;

alter table bos
add column CiaBase varchar(50) first;


use test_rat;
update bos
set CiaBase = '139 Cia'
WHERE(
    MUNICIPIO = 'DIVINOPOLIS' and
	NOME_BAIRRO in 
	(select bairro from tbl_bairros_cias
		where cia = '139 Cia')
	);

create table tbl_bairros_cias (
	id smallint primary key auto_increment,
    cia varchar(20),
    bairro varchar(100)
);

insert into tbl_validador_cia (cia, validador, tipo_validador)
values
('139 Cia', 'CACOCO', 'LOGRADOURO');

update tbl_validador_cia
set tipo_validador = 'BAIRRO';


select * from tbl_validador_cia;
select * from bos;
select * from vlw_CiaBase;
alter table tbl_validador_cia
add column tipo_validador varchar(100); 

delete from tbl_validador_cia
where
id = 18;

use test_rat;

create view vlw_CiaBase as;


select RATNUM_ATIVIDADE, LOGRADOURO, NOME_BAIRRO
,case 
    when (NOME_BAIRRO IN (select validador from tbl_validador_cia where cia = '139 Cia') AND MUNICIPIO = "DIVINOPOLIS")
    or (LOGRADOURO IN (select validador from tbl_validador_cia where cia = '139 Cia' ) AND MUNICIPIO = 'DIVINOPOLIS')
    then '139 Cia'
        
    when (NOME_BAIRRO IN (select validador from tbl_validador_cia where cia = '142 Cia') AND MUNICIPIO = "DIVINOPOLIS")   then '142 Cia'
    when (NOME_BAIRRO IN (select validador from tbl_validador_cia where cia = '53 Cia') AND MUNICIPIO = "DIVINOPOLIS")   then '53 Cia'
    else 'other'
end
as Cia_Base
from bos
where MUNICIPIO = 'DIVINOPOLIS';

create table tbl_metas (
	id smallint(3) primary key auto_increment,
    indicador varchar(50),
    fracao varchar(100),
    meta decimal(10,2),
    mes int(6)
    );

select * from tbl_metas;
drop table tbl_metas;

insert into tbl_metas (indicador, fracao, meta, mes) values
	('VT', '53 Cia', 10, 201810),
    ('VT', '139 Cia', 8, 201810),
    ('VT', '142 Cia', 9, 201810);
    

SELECT * FROM tbl_validador_cia;

select RATNUM_ATIVIDADE, NATCODIGO, LOGRADOURO, NOME_BAIRRO,
case    
    when (((NOME_BAIRRO IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
		or ((LOGRADOURO IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
    )
    then '139 CIA'
        
    when (((NOME_BAIRRO IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
		or ((LOGRADOURO IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )    
    )
    then '53 CIA'
    
    when (((NOME_BAIRRO IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
		or ((LOGRADOURO IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )    
    )
    then '142 CIA'
    
        
    else 'other'
end
as Cia_Base
from bos
where MUNICIPIO = 'DIVINOPOLIS';

select * from tbl_metas;
select * from result;

select Cia_Base, count(NATCODIGO) as resultado,
(count(NATCODIGO) / (select meta from tbl_metas where fracao = '53 Cia' and mes = '201810')) as 'resultado/meta' from result
where NATCODIGO like 'A19%'
and Cia_Base = '53 Cia'
group by Cia_Base;


select NREDS, COD_DIAO, LOGRADOURO, BAIRRO,
case    
    when (
			((BAIRRO IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
		or ((BAIRRO_NAO_CAD IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
        or ((LOGRADOURO IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
        or ((LOGRADOURO_NAO_CAD IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
        or ((NREDS IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
        or ((LOGRADOURO_CRUZ IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
        or ((LOGRADOURO_CRUZ_NAO_CAD IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
    )
    then '139 CIA'
        
   when (
			((BAIRRO IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
		or ((BAIRRO_NAO_CAD IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
        or ((LOGRADOURO IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
        or ((LOGRADOURO_NAO_CAD IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
        or ((NREDS IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
        or ((LOGRADOURO_CRUZ IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
        or ((LOGRADOURO_CRUZ_NAO_CAD IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
    )
    then '53 CIA'
    
    when (
			((BAIRRO IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
		or ((BAIRRO_NAO_CAD IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
        or ((LOGRADOURO IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
        or ((LOGRADOURO_NAO_CAD IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
        or ((NREDS IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
        or ((LOGRADOURO_CRUZ IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
        or ((LOGRADOURO_CRUZ_NAO_CAD IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '142ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
    )
    then '142 CIA'
    
        
    else 'other'
end
as Cia_Base
from tbl_crimes
where MUNICIPIO = 'DIVINOPOLIS';

select * from tbl_crimes;