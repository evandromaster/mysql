SELECT * FROM test_rat.vw_valid_crimes
where DH_fato between '2017-12-01' and '2018-09-31'
and Cia_Base in ('53ª CIA PM', '142ª CIA PM', '139ª CIA PM', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA');


SELECT * FROM test_rat.vw_valid_arm_fgo
where Data_fato between '2018-01-01' and '2018-09-31'
and Cia_Base in ('53ª CIA PM', '142ª CIA PM', '139ª CIA PM', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA');

SELECT * FROM test_rat.vw_valid_mat
where Data_fato between '2018-01-01' and '2018-09-31'
and Cia_Base in ('53ª CIA PM', '142ª CIA PM', '139ª CIA PM', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA');

SELECT * FROM test_rat.vw_valid_envolvidos
where Data_fato between '2018-01-01' and '2018-09-31'
and Cia_Base in ('53ª CIA PM', '142ª CIA PM', '139ª CIA PM', 'CLAUDIO', 'CARMO DO CAJURU', 'ITAUNA', 'ITATIAIUCU', 'SAO GONCALO DO PARA');