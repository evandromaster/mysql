create view vw_valid_bos as

select RATNUM_ATIVIDADE, NATCODIGO, DTA_INICIO, LOGRADOURO, DES_ENDERECO, NOME_BAIRRO, MUNICIPIO, NOM_UNIDADE_AREA,
case    
    when ( MUNICIPIO != 'DIVINOPOLIS') then MUNICIPIO
    
    when (
			((NOME_BAIRRO IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )		
        or ((LOGRADOURO IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
        or ((DES_ENDERECO IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '139ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )        
    )
    then '139 CIA'
        
   when (
			((NOME_BAIRRO IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )		
        or ((LOGRADOURO IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )
        or ((DES_ENDERECO IN (SELECT VALIDADOR FROM tbl_validador_cia WHERE CIA_BASE = '53ª CIA PM'))AND(MUNICIPIO = 'DIVINOPOLIS') )        
    )
    then '53 CIA'
    
    when (
			(NOM_UNIDADE_AREA = '142 CIA PM/23 BPM/7 RPM')
		
    )
    then '142 CIA'
        
    else 'other'
end
as Cia_Base
from bos
where NOM_UNIDADE_AREA LIKE '%/7 RPM%';