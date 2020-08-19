select cia_base as 'Cia PM',year(data_fato) as 'Ano',
sum(if(month(data_fato) = 1, 1, 0)) as 'JAN', -- jan/17
case -- meta jan/18		
		when UEOP = '23º BPM'
        then ( sum(month(data_fato) = 1) * 0.8811 )        
        when UEOP = '7º BPM' and month(data_fato) = 1
        then ( sum(month(data_fato) = 1) * 0.8196 )        
        when UEOP = '63º BPM' and month(data_fato) = 1
        then ( sum(month(data_fato) = 1) * 0.9187 )        
        when UEOP = '60º BPM' and month(data_fato) = 1
        then ( sum(month(data_fato) = 1) * 0.8956 )        
        when UEOP = '19ª CIA PM IND' and month(data_fato) = 1
        then ( sum(month(data_fato) = 1) * 0.8173 )        
	else 'other goal'
    end
    as Meta_jan,
    
sum(if(month(data_fato) = 2, 1, 0)) as 'FEV',
case -- meta fev/18		
		when UEOP = '23º BPM'
        then ( sum(month(data_fato) = 2) * 0.8811 )        
        when UEOP = '7º BPM' and month(data_fato) = 1
        then ( sum(month(data_fato) = 2) * 0.8196 )        
        when UEOP = '63º BPM' and month(data_fato) = 1
        then ( sum(month(data_fato) = 2) * 0.9187 )        
        when UEOP = '60º BPM' and month(data_fato) = 1
        then ( sum(month(data_fato) = 2) * 0.8956 )        
        when UEOP = '19ª CIA PM IND' and month(data_fato) = 1
        then ( sum(month(data_fato) = 2) * 0.8173 )        
	else 'other goal'
    end
    as Meta_jan,


sum(if(month(data_fato) = 3, 1, 0)) as 'MAR',
sum(if(month(data_fato) = 4, 1, 0)) as 'ABR',
sum(if(month(data_fato) = 5, 1, 0)) as 'MAI',
sum(if(month(data_fato) = 6, 1, 0)) as 'JUN',
sum(if(month(data_fato) = 7, 1, 0)) as 'JUL',
sum(if(month(data_fato) = 8, 1, 0)) as 'AGO',
sum(if(month(data_fato) = 9, 1, 0)) as 'SET',
sum(if(month(data_fato) = 10,1, 0)) as 'OUT',
sum(if(month(data_fato) = 11,1, 0)) as 'NOV',
sum(if(month(data_fato) = 12,1, 0)) as 'DEZ',
count(year(data_fato))as 'Total'
from tbl_gdo_ref_2017
where data_fato between '2017-01-01' and '2017-12-31'
and MUNICIPIO = 'DIVINOPOLIS'
group by cia_base
order by cod_diao;




