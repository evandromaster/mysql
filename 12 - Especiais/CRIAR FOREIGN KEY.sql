alter table tbl_rat_efetivo
add foreign key (NUM_ATIVIDADE) -- CAMPO DA TABELA RAT EFETIVO
references tbl_rat(RATNUM_ATIVIDADE); -- CAMPO DA TBL ONDE  CONTEM A CHAVE PRIMARIA;

alter table gafanhotos
add foreign key (cursopreferido) -- CAMPO   DA TABALA  GAFANHOTOS 
references cursos(idcurso);