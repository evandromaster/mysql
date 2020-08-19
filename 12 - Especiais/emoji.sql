create table tbl_carinhas
(id smallint,
carinha char(1));

ALTER TABLE
    tbl_carinhas
    CONVERT TO CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

insert into tbl_carinhas values (2,'🤢');



(1, '☹'), (2, '😐'), (3, '🙂');


select * from tbl_carinhas;