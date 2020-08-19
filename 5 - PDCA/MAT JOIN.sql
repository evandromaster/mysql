SELECT
	mat.NREDS,
    mat.DESC_TIPO_MATERIAL,
    mat.DESC_TIPO_MATERIAL,
    mat.UNIDADE_MEDIDA,
    mat.QTDE_MAT_VOL,
    d_mat.DESC_TIPO_MATERIAL,
    d_mat.UNIDADE_MEDIDA,
    d_mat.GRAMAS,
    case
		when mat.DESC_TIPO_MATERIAL = 'CRACK EM PEDRAS' 
		then (mat.QTDE_MAT_VOL)
		       
		else (0)
	end	as CRACK_EM_PEDRAS,
    
    case
		when mat.DESC_TIPO_MATERIAL IN ('CRACK EM QUILOGRAMAS', 'OUTROS - CRACK') 
		then (mat.QTDE_MAT_VOL*d_mat.GRAMAS) 
		       
		else (0)
	end	as CRACK_EM_GRAMAS,
    
	case
		when mat.DESC_TIPO_MATERIAL IN ('MACONHA PRENSADA (BARRA / TABLETE)') 
		then (mat.QTDE_MAT_VOL) 
		       
		else (0)
	end	as MACONHA_TABLETE,
		
	case
		when mat.DESC_TIPO_MATERIAL IN ('BUCHA DE MACONHA') 
		then (mat.QTDE_MAT_VOL) 
		       
		else (0)
	end	as MACONHA_BUCHA,
    
	case
		when mat.DESC_TIPO_MATERIAL IN ('CIGARRO DE MACONHA') 
		then (mat.QTDE_MAT_VOL) 
		       
		else (0)
	end	as CIGARRO_MACONHA,
    
	case
		when mat.DESC_TIPO_MATERIAL IN ('OUTROS - MACONHA') 
		then (mat.QTDE_MAT_VOL) 
		       
		else (0)
	end	as MACONHA_OUTROS,
    
	case
		when mat.DESC_TIPO_MATERIAL IN ('PLANTACAO (PE) DE MACONHA') 
		then (mat.QTDE_MAT_VOL) 
		       
		else (0)
	end	as MACONHA_PES,
    
	case
		when mat.DESC_TIPO_MATERIAL IN ('SEMENTE DE MACONHA') 
		then (mat.QTDE_MAT_VOL) 
		       
		else (0)
	end	as MACONHA_SEMENTE,
    
 	case
		when mat.DESC_TIPO_MATERIAL IN ('SEMENTE DE MACONHA') 
		then (mat.QTDE_MAT_VOL) 
		       
		else (0)
	end	as MACONHA_SEMENTE,   
    
	(mat.QTDE_MAT_VOL*d_mat.GRAMAS) as QTDE_TOTAL
	
FROM pdca.tbl_materiais as mat
	LEFT JOIN pdca.tbl_d_mat as d_mat
    ON CONCAT(mat.DESC_TIPO_MATERIAL, mat.UNIDADE_MEDIDA) = CONCAT(d_mat.DESC_TIPO_MATERIAL, d_mat.UNIDADE_MEDIDA)

WHERE d_mat.DESC_GRUPO_TIPO_MATERIAL IN ('MEDICAMENTOS / SINTETICOS', 'MACONHA', 'COCAINA', 'CRACK', 'MERLA', 'OPIACEOS', 'INALAVEIS', 'HAXIXE', 'INALAVEIS','LSD', 'TABACARIA EM GERAL')

GROUP BY NREDS
ORDER BY NREDS
;

select
	NREDS,
    count(NREDS)
from
	tbl_materiais
group by NREDS 
order by NREDS;