set @ano_ant = 2018; set @ano_atual = 2019; 
set @mes_ant = 4; set @mes_atual = 4; 

SELECT 

sum(if(day(DATA_FATO) = 1 and month(DATA_FATO) = @mes_ant, 1, 0)) as '1',
sum(if(day(DATA_FATO) = 1 and month(DATA_FATO) = @mes_atual, 1, 0)) as '1',
sum(if(day(DATA_FATO) = 2, 1, 0)) as '2',
sum(if(day(DATA_FATO) = 3, 1, 0)) as '3',
sum(if(day(DATA_FATO) = 4, 1, 0)) as '4',
sum(if(day(DATA_FATO) = 5, 1, 0)) as '5',
sum(if(day(DATA_FATO) = 6, 1, 0)) as '6',
sum(if(day(DATA_FATO) = 7, 1, 0)) as '7',
sum(if(day(DATA_FATO) = 8, 1, 0)) as '8',
sum(if(day(DATA_FATO) = 9, 1, 0)) as '9',
sum(if(day(DATA_FATO) = 10, 1, 0)) as '10',
sum(if(day(DATA_FATO) = 11, 1, 0)) as '11',
sum(if(day(DATA_FATO) = 12, 1, 0)) as '12',
sum(if(day(DATA_FATO) = 13, 1, 0)) as '13',
sum(if(day(DATA_FATO) = 14, 1, 0)) as '14',
sum(if(day(DATA_FATO) = 15, 1, 0)) as '15',
sum(if(day(DATA_FATO) = 16, 1, 0)) as '16',
sum(if(day(DATA_FATO) = 17, 1, 0)) as '17',
sum(if(day(DATA_FATO) = 18, 1, 0)) as '18',
sum(if(day(DATA_FATO) = 19, 1, 0)) as '19',
sum(if(day(DATA_FATO) = 20, 1, 0)) as '20',
sum(if(day(DATA_FATO) = 21, 1, 0)) as '21',
sum(if(day(DATA_FATO) = 22, 1, 0)) as '22',
sum(if(day(DATA_FATO) = 23, 1, 0)) as '23',
sum(if(day(DATA_FATO) = 24, 1, 0)) as '24',
sum(if(day(DATA_FATO) = 25, 1, 0)) as '25',
sum(if(day(DATA_FATO) = 26, 1, 0)) as '26',
sum(if(day(DATA_FATO) = 27, 1, 0)) as '27',
sum(if(day(DATA_FATO) = 28, 1, 0)) as '28',
sum(if(day(DATA_FATO) = 29, 1, 0)) as '29',
sum(if(day(DATA_FATO) = 30, 1, 0)) as '30',
sum(if(day(DATA_FATO) = 31, 1, 0)) as '31'
FROM gdo.tbl_crimes

where DATA_FATO between '2019-04-01' and '2019-04-31'

;