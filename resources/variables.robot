*** Variables ***
${BASE_URL}                         https://desafio-equipe.vercel.app/
${TITULO_PRINCIPAL}                 Cadastrar Perfil de Usuário Inteligente
${NOME_COMPLETO}                    Luiz Henrique de Andrade Gonçalves
${DATA_NASCIMENTO}                  29/03/1993
${PREFERENCIA_NAVEGACAO}            Google Chrome, Edge, Mozilla, Firefox
${CAMINHO_IMAGEM}                   ${EXECDIR}/imagens/foto.png

# ==============================================================================
# Elementos
# ==============================================================================
${campo_data_nascimento}            id=dataNascimento
${campo_nome}                       id=nome
${campo_impressao_digital}          id=impressao-digital
${campo_preferencias_navegacao}     id=preferenciasNavegacao
${campo_foto_perfil}                id=fotoPerfil
${campo_preferencia_idioma}         id=idioma
${campo_nivel_privacidade}          id=privacidade
${campo_checkbox_consentimento}     id=consentimento
${botao_finalizar_cadastro}         css=button.btn-submit
${botao_cancelar}                   css=button.btn-cancel

# ==============================================================================
# Variáveis dos campos com sugestões Geral
# ==============================================================================
@{LISTA_IDIOMAS}
...                                 en
...                                 pt
...                                 es
...                                 fr
...                                 de

@{LISTA_NIVEL_PRIVACIDADE}
...                                 padrao
...                                 medio
...                                 alto
