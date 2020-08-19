create view vw_result_ic as
select
	Cia_Base 	as Fração,
	count(*) 	as Resultado from vw_valid_bos
where NATCODIGO like '%A19%'
group by Cia_Base;


/*
and DTA_INICIO > str_to_date('01/05/2018', '%d/%m/%Y')
and DTA_INICIO < str_to_date('31/05/2018', '%d/%m/%Y')
*/

select * from tbl_metas;