create view vw_metas as
select CIA_BASE,
sum(month(DATA_FATO) = 1) as Jan17
from tbl_gdo_ref_2017 as tb17
group by CIA_BASE;

create view vw_resultados as
select Cia_Base,
sum(month(DATA_FATO) = 1) as Jan18
from vw_val_tbl_crimes as vw17
group by Cia_Base;



select mt.CIA_BASE,
mt.Jan17,
( round(mt.Jan17 * 0.8811, 2) ) as Meta18,
rs.Jan18 as Res_18

from vw_metas as mt
inner join vw_resultados as rs
on mt.CIA_BASE = rs.Cia_Base;
