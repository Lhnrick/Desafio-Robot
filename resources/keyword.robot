Language: ptbr
*** Settings ***
Library     SeleniumLibrary
Resource    variables.robot


*** Keywords ***
Realizar acesso da tela
    Open Browser    ${BASE_URL}    browser=chrome
    Maximize Browser Window

que estou na tela "Cadastrar perfil de usuário inteligente"
    [Documentation]    Valida que estou na tela de cadastro de perfil de usuário inteligente
    ${titulo_obtido}=    Get Title
    Should Be Equal As Strings    ${titulo_obtido}    ${TITULO_PRINCIPAL}

o usuário preenche o campo "Nome completo" com @NOME_COMPLETO
    Input Text    ${campo_nome}    ${NOME_COMPLETO}

preenche o campo "Data de Nascimento" com @DATA_NASCIMENTO
    Input Text    ${campo_data_nascimento}    ${DATA_NASCIMENTO}

insere sua impressão digital validada no leitor biométrico
    Click Element    ${campo_impressao_digital}
    ${titulo_obtido}=    Get Text    id=impressao-digital-text
    Should Be Equal As Strings    ${titulo_obtido}    Impressão digital registrada!

preenche o campo "Preferências de Navegação"
    Input Text    ${campo_preferencias_navegacao}    ${PREFERENCIA_NAVEGACAO}

carrego uma foto no campo "Foto de Perfil"
    Choose File    ${campo_foto_perfil}    ${CAMINHO_IMAGEM}

seleciono um idioma no campo "Preferência de Idioma"
    Select From List By Value    ${campo_preferencia_idioma}    ${LISTA_IDIOMAS}[2]

seleciono um nível de privacidade no campo "Nível de Privacidade"
    Select From List By Value    ${campo_nivel_privacidade}    ${LISTA_NIVEL_PRIVACIDADE}[1]

marco a opção "Consentimento para Coleta de Dados"
    ${status}=    Run Keyword And Return Status    Checkbox Should Be Selected    ${campo_checkbox_consentimento}
    IF    not ${status}    Click Element    ${campo_checkbox_consentimento}

clico no botão "Finalizar Cadastro"
    click Element    ${botao_finalizar_cadastro}

clico no botão "Cancelar"
    Click Element    ${botao_cancelar}

o processo de cadastro é cancelado e os campos são limpos
    ${valor_nome}=    Get Value    ${campo_nome}
    ${valor_dataNascimento}=    Get Value    ${campo_data_nascimento}
    ${valor_preferencias}=    Get Value    ${campo_preferencias_navegacao}
    Should Be Empty    ${valor_nome}
    Should Be Empty    ${valor_dataNascimento}
    Should Be Empty    ${valor_preferencias}

valido que recebi o alerta de "Preencha este campo."
    [Arguments]    ${campo}
    Click Button    css=.btn-submit
    ${mensagem}=    Execute JavaScript    return document.getElementById('${campo}').validationMessage;
    Should Contain    ${mensagem}    Preencha este campo.
    Log To Console    ${mensagem}
