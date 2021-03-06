SELECT NREDS, UEOP AS UNIDADE, UN_REGISTRO,
SUM(EFETIVO) AS EFETIVO,
SUM(VIATURAS) AS VIATURAS,
SUM(PESSOAS_PRESAS) AS PRESOS,
SUM(PESSOAS_APREENDIDAS) AS APREEENDIDOS,
SUM(PESSOAS_PRESAS_MANDADO) AS MANDADO_PRISAO,
SUM(PES_PRESAS_TRAFICO_DROGAS) AS PES_PRESAS_TRAFICO_DROGAS,
SUM(PES_PRESAS_HOMICIDIO) AS PES_PRESAS_HOMICIDIO,
SUM(PES_PRESAS_ROUBO) AS PES_PRESAS_ROUBO,
SUM(PES_PRESAS_FURTO) AS PES_PRESAS_FURTO,
-- SUM(0) AS REVOLVER_CAL22,
-- SUM(0) AS REVOLVER_CAL32,
-- SUM(0) AS REVOLVER_CAL38,
SUM(REVOLVER) AS REVOLVER,
-- SUM(0) AS ESPINGARDA_POLVEIRA,
-- SUM(0) AS ESPINGARDA_CAL20,
-- SUM(0) AS ESPINGARDA_CAL28,
-- SUM(0) AS ESPINGARDA_CAL44,
SUM(ESPINGARDA) AS ESPINGARDA,
-- SUM(0) AS PISTOLA_CAL765,
-- SUM(0) AS PISTOLA_CAL380,
-- SUM(0) AS PISTOLA_CAL40,
-- SUM(0) AS PISTOLA_CAL9MM,
SUM(PISTOLA) AS PISTOLA,
SUM(MUNICOES_UN) AS MUNICOES,
SUM(ARMAS_DE_PRESSAO) AS ARMA_DE_PRESSAO,
SUM(SIMULACRO) AS SIMULACRO,
SUM(ARMAS_BRANCA) AS ARMAS_BRANCA,
SUM(CRACK_PEDRAS_UN) AS CRACK_PEDRAS_UN,
SUM(CRACK_GR) AS CRACK_GR,
SUM(MACONHA_TABLETE_GR) AS MACONHA_TABLETE_GR,
SUM(MACONHA_BUCHA_UN) AS MACONHA_BUCHA_UN,
SUM(CIGARRO_MACONHA_UN) AS CIGARRO_MACONHA_UN,
SUM(0) AS COCAINA_ENDOLA_UN,
SUM(COCAINA_PAPELOTE_UN) AS COCAINA_PAPELOTE_UN,
SUM((COCAINA_PASTA_GR + COCAINA_OUTROS_GR + COCAINA_EM_PO_GR)) AS COCAINA_GR,
SUM(HAXIXE_EM_BOLA_UN) AS HAXIXE_EM_BOLA_UN,
SUM(ECSTASE_UN) AS ECSTASE_UN,
SUM(LSD_UN) AS LSD_UN,
SUM(DROGAS_OUTRAS_UN) AS DROGAS_OUTRAS_UN,
SUM(TELEFONE_CELULAR_UN) AS TELEFONE_CELULAR_UN,
SUM(MICRO_COMPUTADOR_UN) AS MICRO_COMPUTADOR_UN,
SUM(VEICULOS_APREENDIDOS) AS VEICULOS_APREENDIDOS,
SUM(VEICULOS_RECUPERADOS) AS VEICULOS_RECUPERADOS,
SUM(AIT) AS AIT,
COUNT(*) AS 'TOTAL_REDS_REGISTRADOS'
-- SUM(if(COD_DIAO = 'C01157' AND T_C = 'CONSUMADO', 1, 0)) as 'ROUBO'

-- sum(if(month(data_fato) = 1, 1, 0)) as 'JAN',
FROM pdca.vw_pdca
WHERE DATA_FATO BETWEEN '2019-07-21' AND '2019-07-31'
-- AND MUNICIPIO IN ('DIVINOPOLIS', 'CARMO DO CAJURU', 'CLAUDIO', 'SAO GONCALO DO PARA', 'ITAUNA', 'ITATIAIUCU')
AND UN_REGISTRO NOT LIKE '7 CIA PM IND PE/7 RPM'
GROUP BY NREDS with rollup
 ;