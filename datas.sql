select
DATE_SUB(DATE_SUB(CURDATE(), INTERVAL 1 year), INTERVAL 3 DAY) AS '1ºDIA 2019', -- 1 DIA ANTERIOR DO ANO ANTERIOR

DATE_SUB(CURDATE(), INTERVAL 3 DAY) AS '1ºDIA 2020',-- 2 DIA ANTERIOR DO ANO ANTERIOR

DATE_SUB(DATE_SUB(CURDATE(), INTERVAL 1 year), INTERVAL 2 DAY) AS '2ºDIA 2019', -- 1 DIA ANTERIOR DO ANO ANTERIOR

DATE_SUB(CURDATE(), INTERVAL 2 DAY) AS '2ºDIA 2020',-- 2 DIA ANTERIOR DO ANO ANTERIOR

DATE_SUB(DATE_SUB(CURDATE(), INTERVAL 1 year), INTERVAL 1 DAY) AS '3ºDIA 2019', -- 1 DIA ANTERIOR DO ANO ANTERIOR

DATE_SUB(CURDATE(), INTERVAL 1 DAY) AS '3ºDIA 2020',-- 2 DIA ANTERIOR DO ANO ANTERIOR

DATE_SUB(DATE_SUB(CURDATE(), INTERVAL 1 year), INTERVAL 1 DAY) AS 'MENSAL 2019', -- 1 DIA ANTERIOR DO ANO ANTERIOR

DATE_SUB(CURDATE(), INTERVAL 1 DAY) AS 'MENSAL 2020', -- 2 DIA ANTERIOR DO ANO ANTERIOR



date_sub(date_sub(date_add(LAST_DAY(curdate()),interval 1 DAY),interval 1 MONTH), interval 1 year) AS '1º DIA MES 2019',
 
date_sub(date_add(LAST_DAY(curdate()),interval 1 DAY),interval 1 MONTH)  AS '1º DIA MES 2020',

date_sub(DATE_add(DATE_sub(CURDATE(), INTERVAL month(curdate())-1 month),INTERVAL TIMESTAMPDIFF(DAY, CURDATE(), date_sub(date_add(LAST_DAY(curdate()),interval 1 DAY),interval 1 MONTH)) day), interval 1 year) as '1º Dia do ano 2019',

DATE_add(DATE_sub(CURDATE(), INTERVAL month(curdate())-1 month),INTERVAL TIMESTAMPDIFF(DAY, CURDATE(), date_sub(date_add(LAST_DAY(curdate()),interval 1 DAY),interval 1 MONTH)) day) as '1º Dia do ano 2020',


LAST_DAY(CURDATE()),
 
 last_day(curdate()),   date_add(LAST_DAY(curdate()),interval 1 DAY),

 
    DATE_ADD(DATE_ADD(LAST_DAY(curdate()),
            INTERVAL 1 DAY),
        INTERVAL - 1 MONTH) AS first_day;


/*(curdate())-1 as '2019' , curdate(), current_date(), date_sub(curdate(),INTERVAL 1 DAY) DIA_ANT,


date_sub(date_sub(curdate(),INTERVAL 1 year), interval 1 day) ano_ANT,

NOW(),*/
