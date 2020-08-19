DELIMITER $$
CREATE FUNCTION fnc_7rpm (MUNICIPIO VARCHAR(50))
RETURNS varchar (15)
BEGIN
	RETURN 
		MUNICIPIO in ('CARMO DO CAJURU','CLAUDIO','DIVINOPOLIS','ITATIAIUCU','ITAUNA', 'SAO GONCALO DO PARA', -- '23º BPM'                                                                           6
		
        'IGARATINGA','MARAVILHAS','ONCA DO PITANGUI','PAPAGAIOS', 'PARA DE MINAS','PEQUI','SAO JOSE DA VARGINHA', -- '19ª Cia PM Ind'                                                                7
        
       'ARAUJOS','CONCEICAO DO PARA','LEANDRO FERREIRA','NOVA SERRANA',	'PERDIGAO','PITANGUI' -- '60º BPM'                                                                                           6
		
        'ARCOS','BAMBUI','CAMACHO','CORREGO FUNDO','FORMIGA','IGUATAMA','ITAPECERICA', 'MEDEIROS','PAINS','PIMENTA','SAO SEBASTIAO DO OESTE','TAPIRAI' -- '63º BPM'                                  12
		
        'ABAETE','BIQUINHAS','BOM DESPACHO','CEDRO DO ABAETE','CORREGO DANTA','DORES DO INDAIA','ESTRELA DO INDAIA','JAPARAIBA','LAGOA DA PRATA','LUZ','MARTINHO CAMPOS','MOEMA',
		'MORADA NOVA DE MINAS','PAINEIRAS','PEDRA DO INDAIA','POMPEU','QUARTEL GERAL','SANTO ANTONIO DO MONTE',
		'SERRA DA SAUDADE') --  '7º BPM'                                                                                                                                                             19

            ;
END$$
DELIMITER ;