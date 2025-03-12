*** Variables ***
${BASE_URL}                         https://desafio-equipe.vercel.app/
${TITULO_PRINCIPAL}                 Cadastrar Perfil de Usuário Inteligente
${NOME_COMPLETO}                    Luiz Henrique de Andrade Gonçalves
${DATA_NASCIMENTO}                  29/03/1993
${DATA_NASCIMENTO_INVALIDA}         13/12/275760
${PREFERENCIA_NAVEGACAO}            Google Chrome, Edge, Mozilla, Firefox
${CAMINHO_IMAGEM}                   ${EXECDIR}/imagens/foto.png

# ==============================================================================
# Elementos
# ==============================================================================
${campo_data_nascimento}            dataNascimento
${campo_nome}                       nome
${campo_impressao_digital}          impressao-digital
${campo_preferencias_navegacao}     preferenciasNavegacao
${campo_foto_perfil}                fotoPerfil
${campo_preferencia_idioma}         idioma
${campo_nivel_privacidade}          privacidade
${campo_checkbox_consentimento}     consentimento
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
