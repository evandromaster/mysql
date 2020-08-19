SELECT digitador,  sum(veic_fisc), sum(ABORDADOS), sum(veic_fisc)*5 as veic, sum(ABORDADOS) as abordados, 

(sum(veic_fisc)*5) + sum(ABORDADOS)  as indexg

 FROM gdo.tbl_rat_resultados_rqv

where DTA_INICIO between '2019-03-18' and '2019-03-27'


group by DIGITADOR


;