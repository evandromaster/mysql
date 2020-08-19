-- create view vw_metas_abs_cv as

set @inicio = '01/09/2017';
set @fim = '31/09/2017';

select
	CIA_BASE as Fracao,
	count(*) as  Crimes_2017,
    case		
		when UEOP = '23º BPM'
        then ( count(*) * 0.8811 )
        
        when UEOP = '7º BPM'
        then ( count(*) * 0.8196 )
        
        when UEOP = '63º BPM'
        then ( count(*) * 0.9187 )
        
        when UEOP = '60º BPM'
        then ( count(*) * 0.8956 )
        
        when UEOP = '19ª CIA PM IND'
        then ( count(*) * 0.8173 )
        
	else 'other goal'
    end
    as Meta_2018
    
from tbl_gdo_ref_2017    

where
	DATA_FATO >= str_to_date(@inicio, '%d/%m/%Y')
	and DATA_FATO <= str_to_date(@fim, '%d/%m/%Y')

group by CIA_BASE;




select * from tbl_gdo_ref_2017;

