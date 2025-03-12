Language: ptbr
*** Settings ***
Documentation       Acessa os campos da tela e valida o cadastro de usuário e cancelamento de cadastro

Resource            ../resources/cadastro_perfil/keywords.robot

Test Setup          Realizar acesso da tela
Test Teardown       Close Browser


*** Test Cases ***
Cenário 1 - Cadastro com todos os campos preenchidos
    [Tags]    cadastro
    Dado que estou na tela "Cadastrar perfil de usuário inteligente"
    Quando o usuário preenche o campo "Nome completo" com @NOME_COMPLETO
    E preenche o campo "Data de Nascimento" com @DATA_NASCIMENTO
    E insere sua impressão digital validada no leitor biométrico
    E preenche o campo "Preferências de Navegação"
    E carrego uma foto no campo "Foto de Perfil"
    E seleciono um idioma no campo "Preferência de Idioma"
    E seleciono um nível de privacidade no campo "Nível de Privacidade"
    E marco a opção "Consentimento para Coleta de Dados"
    E clico no botão "Finalizar Cadastro"

Cenário 2 - Cancelamento do cadastro
    [Tags]    cadastro
    Dado que estou na tela "Cadastrar perfil de usuário inteligente"
    Quando insere sua impressão digital validada no leitor biométrico
    E preenche o campo "Preferências de Navegação"
    E carrego uma foto no campo "Foto de Perfil"
    E seleciono um idioma no campo "Preferência de Idioma"
    E seleciono um nível de privacidade no campo "Nível de Privacidade"
    E marco a opção "Consentimento para Coleta de Dados"
    E clico no botão "Cancelar"
    Então o processo de cadastro é cancelado e os campos são limpos
