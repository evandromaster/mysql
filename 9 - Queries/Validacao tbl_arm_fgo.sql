select * from vw_val_tbl_crimes
inner join tbl_arm_fgo
on vw_val_tbl_crimes.NREDS = tbl_arm_fgo.NREDS;


select * from tbl_arm_fgo;

select * from vw_val_tbl_crimes;