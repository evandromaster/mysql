SELECT
	*
FROM
	pdca.tbl_ocorrencias as o
		LEFT JOIN pdca.tbl_envolvidos as e
			ON o.NREDS = e.NREDS
		LEFT JOIN pdca.tbl_armas_fgo as af
			ON o.NREDS = af.NREDS
		LEFT JOIN pdca.tbl_veiculos as v
			ON o.NREDS = v.NREDS
		LEFT JOIN pdca.tbl_materiais as m
			ON o.NREDS = m.NREDS
        

GROUP BY o.NREDS;
    