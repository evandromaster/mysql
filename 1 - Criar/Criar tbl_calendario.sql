DROP TABLE IF EXISTS tbl_calendario;
CREATE TABLE tbl_calendario (
        id                      INTEGER PRIMARY KEY,  -- year*10000+month*100+day
        db_date                 DATE NOT NULL,
        year                    INTEGER NOT NULL,
        year_day                INTEGER NOT NULL,
        month                   INTEGER NOT NULL, -- 1 to 12
        day                     INTEGER NOT NULL, -- 1 to 31
        dezena	            	VARCHAR(9) NOT NULL, -- 'January', 'February'...
        day_year_concat         VARCHAR(50) NOT NULL, 
        quarter                 INTEGER NOT NULL, -- 1 to 4
        week                    INTEGER NOT NULL, -- 1 to 52/53
        day_name                VARCHAR(9) NOT NULL, -- 'Monday', 'Tuesday'...
        dia_nome                VARCHAR(9) NOT NULL, -- 'Monday', 'Tuesday'...
        month_name              VARCHAR(9) NOT NULL, -- 'January', 'February'...
        mes_nome            	VARCHAR(9) NOT NULL, -- 'January', 'February'...
		        holiday_flag            CHAR(1) DEFAULT 'f' CHECK (holiday_flag in ('t', 'f')),
        weekend_flag            CHAR(1) DEFAULT 'f' CHECK (weekday_flag in ('t', 'f')),
        event                   VARCHAR(50),
        UNIQUE td_ymd_idx (year,month,day),
        UNIQUE td_dbdate_idx (db_date)

) Engine=MyISAM;-- InnoDB;

DROP PROCEDURE IF EXISTS fill_tbl_calendario;
DELIMITER //
CREATE PROCEDURE fill_tbl_calendario(IN startdate DATE,IN stopdate DATE)
BEGIN
    DECLARE currentdate DATE;
    SET currentdate = startdate;
    WHILE currentdate < stopdate DO
        INSERT INTO tbl_calendario VALUES (
                        YEAR(currentdate)*10000+MONTH(currentdate)*100 + DAY(currentdate),
                        currentdate,
                        YEAR(currentdate),
                        DAYOFYEAR(currentdate),
                        MONTH(currentdate),
                        DAY(currentdate),
                        case when DAY(currentdate)  between 1 and 10  THEN '1ªDEZ' WHEN DAY(currentdate) between 11 and 20 THEN '2ªDEZ' WHEN DAY(currentdate) between 21 and 31 THEN '3ªDEZ' ELSE 'f' END,
                        concat(DAYOFYEAR(currentdate), " - ", left((DATE_FORMAT(db_date,'%d/%m/%Y')),5)),
                        QUARTER(currentdate),
                        WEEKOFYEAR(currentdate),
                        DATE_FORMAT(currentdate,'%W'),
                        case dayofweek(currentdate) WHEN 1 THEN 'DOMINGO' WHEN 2 THEN 'SEGUNDA' WHEN 3 THEN 'TERCA' WHEN 4 THEN 'QUARTA' WHEN 5 THEN 'QUINTA' WHEN 6 THEN 'SEXTA' WHEN 7 THEN 'SABADO' ELSE 'f' END,
                        DATE_FORMAT(currentdate,'%M'),
                        case month(currentdate) WHEN 1 THEN 'JAN' WHEN 2 THEN 'FEV' WHEN 3 THEN 'MAR' WHEN 4 THEN 'ABR' WHEN 5 THEN 'MAI' WHEN 6 THEN 'JUN' WHEN 7 THEN 'JUL' WHEN 8 THEN 'AGO' WHEN 9 THEN 'SET' WHEN 10 THEN 'OUT' WHEN 11 THEN 'NOV' WHEN 12 THEN 'DEZ' ELSE 'f' END,
                        'f',
                        CASE DAYOFWEEK(currentdate) WHEN 1 THEN 't' WHEN 7 then 't' ELSE 'f' END,
                        NULL);
        SET currentdate = ADDDATE(currentdate,INTERVAL 1 DAY);
    END WHILE;
END
//
DELIMITER ;

TRUNCATE TABLE tbl_calendario;

CALL fill_tbl_calendario('2018-01-01','2021-01-01');
OPTIMIZE TABLE tbl_calendario;