SELECT table_name
	nome_da_tabela,
	data_length / 1024 / 1024 "Tamanho da tabela em MB",
    index_length / 1024 / 1024 "Tamanho do indice em MB",
	engine
FROM information_schema.tables
WHERE
	table_name in
		(SELECT table_name FROM information_schema.tables WHERE table_schema = 'gdo')

GROUP BY nome_da_tabela
ORDER BY data_length;