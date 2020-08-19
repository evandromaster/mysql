SELECT    bairro, 
count(distinctrow MEMBRO_1) as freq1,

count(distinctrow MEMBRO_2) as freq2,

count(distinctrow MEMBRO_3) as freq3,


count(MEMBRO_1) +

count(MEMBRO_2) +

count(MEMBRO_3)  as total



FROM geo.tbl_rpp

-- group by bairro