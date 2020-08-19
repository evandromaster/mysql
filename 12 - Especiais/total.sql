SELECT cIA_BASE, SUM(CV) as totalprice
FROM vw_valid_crimes 
GROUP BY Cia_Base WITH ROLLUP 