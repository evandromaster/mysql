SELECT `classificaRat_BosPorSetorItauna`(RATNUM_ATIVIDADE, NOME_BAIRRO, LOGRADOURO, DES_ENDERECO, LOGRADOURO2, DES_ENDERECO2, COMPLEMENTO_ENDERECO, COMPLEMENTO_ALFA, LATITUDE) as setor_ita
                                                    
                                                    FROM tbl_rat where municipio = 'itauna'
                                                        and DTA_INICIO between '2019-01-01' and '2019-12-31'
    AND NATCODIGO IN ('Y07001', 'Y07003', 'Y07004', 'Y07005') 
    and `classificaRat_BosPorSetorItauna`(RATNUM_ATIVIDADE, NOME_BAIRRO, LOGRADOURO, DES_ENDERECO, LOGRADOURO2, DES_ENDERECO2, COMPLEMENTO_ENDERECO, COMPLEMENTO_ALFA, LATITUDE) ='other'
    ;
    
    
    
    
    
                                                    
                                                    
SELECT `classificaRat_BosPorSetorDivinopolis`(RATNUM_ATIVIDADE, NOME_BAIRRO, LOGRADOURO, DES_ENDERECO,
													LOGRADOURO2, DES_ENDERECO2, COMPLEMENTO_ENDERECO, COMPLEMENTO_ALFA, LATITUDE) as setor_div
                                                    
                                                    FROM tbl_rat where municipio = 'divinopolis'
								
                                                    
                                                        and DTA_INICIO between '2019-01-01' and '2019-12-31'
    AND NATCODIGO IN ('Y07001', 'Y07003', 'Y07004', 'Y07005')
    
     and `classificaRat_BosPorSetorDivinopolis`(RATNUM_ATIVIDADE, NOME_BAIRRO, LOGRADOURO, DES_ENDERECO, LOGRADOURO2, DES_ENDERECO2, COMPLEMENTO_ENDERECO, COMPLEMENTO_ALFA, LATITUDE) ='other'
    ;