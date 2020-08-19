from datetime import datetime
start_time = datetime.now()

import truncate_tables
print(truncate_tables)
print('')

import load_validadores
print(load_validadores)
print('')

import load_crimes
print(load_crimes)
print('')

import load_envolvidos
print(load_envolvidos)
print('')

import load_armas_fgo
print(load_armas_fgo)
print('')

import load_materiais
print(load_materiais)



print('')


import truncate_tbl_cartao_prog
print(truncate_tbl_cartao_prog)
print('')

import load_cartao_prog_ocorr
print(load_cartao_prog_ocorr)
print('')


print("Tudo pronto! Arquivos carregados com sucesso!!!...")
print("")

# do your work here
end_time = datetime.now()
print('tempo de execução total: {}'.format(end_time - start_time))
