SELECT
UEOP AS UNIDADE,
MUNICIPIO,
DATA_FATO AS 'DATA',
EFETIVO,
VIATURAS,
NREDS AS REDS,
COD_DIAO AS NATUREZA,
PESSOAS_PRESAS AS PRESOS,
PESSOAS_APREENDIDAS AS APREEENDIDOS,
PESSOAS_PRESAS_MANDADO AS 'MANDADO PRISAO',
0 AS REVOLVER_CAL22,
0 AS REVOLVER_CAL32,
0 AS REVOLVER_CAL38,
REVOLVER AS REVOLVER,
0 AS ESPINGARDA_POLVEIRA,
0 AS ESPINGARDA_CAL20,
0 AS ESPINGARDA_CAL28,
0 AS ESPINGARDA_CAL44,
ESPINGARDA,
0 AS PISTOLA_CAL765,
0 AS PISTOLA_CAL380,
0 AS PISTOLA_CAL40,
0 AS PISTOLA_CAL9MM,
PISTOLA,
MUNICOES_UN AS MUNICOES,
ARMAS_DE_PRESSAO,
SIMULACRO,
ARMAS_BRANCA,
CRACK_PEDRAS_UN,
CRACK_GR,
MACONHA_TABLETE_GR,
MACONHA_BUCHA_UN,
CIGARRO_MACONHA_UN,
0 AS COCAINA_ENDOLA_UN,
COCAINA_PAPELOTE_UN,
(COCAINA_PASTA_GR + COCAINA_OUTROS_GR + COCAINA_EM_PO_GR) AS COCAINA_GR,
HAXIXE_EM_BOLA_UN,
ECSTASE_UN,
LSD_UN,
DROGAS_OUTRAS_UN,
EQUIP_NARCOTICOS_OUTROS_UN,
MOEDA_NACIONAL_R$,
MOEDA_OUTRAS_$,
TELEFONE_CELULAR_UN,
MICRO_COMPUTADOR_UN,
VEICULOS_APREENDIDOS,
VEICULOS_RECUPERADOS

 FROM pdca.vw_pdca
 WHERE DATA_FATO BETWEEN '2019-01-01' AND '2019-01-31'
-- AND MUNICIPIO IN ('DIVINOPOLIS', 'CARMO DO CAJURU', 'CLAUDIO', 'SAO GONCALO DO PARA', 'ITAUNA', 'ITATIAIUCU')

AND UN_REGISTRO = '7 CIA PM IND PE/7 RPM'

 ;