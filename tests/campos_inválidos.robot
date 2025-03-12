Language: ptbr
*** Settings ***
Documentation       Acessa os campos da tela e valida o cadastro com campos inválidos

Resource            ../resources/cadastro_perfil/keywords.robot

Suite Setup         Realizar acesso da tela
Suite Teardown      Close Browser


*** Test Cases ***
Cenário 1 - Cadastro sem campo obrigatório "Nome completo"
    [Tags]    campos_invalidos
    Set Selenium Speed    0.2
    Dado que estou na tela "Cadastrar perfil de usuário inteligente"
    Quando clico no botão "Finalizar Cadastro"
    Então valido que recebi o alerta    nome

Cenário 2 - Cadastro sem campo obrigatório "Data de Nascimento"
    [Tags]    campos_invalidos
    Dado que estou na tela "Cadastrar perfil de usuário inteligente"
    Quando o usuário preenche o campo "Nome completo" com @NOME_COMPLETO
    E clico no botão "Finalizar Cadastro"
    Então valido que recebi o alerta    dataNascimento

Cenário 3 - Cadastro sem campo obrigatório "Foto de Perfil"
    [Tags]    campos_invalidos
    Dado que estou na tela "Cadastrar perfil de usuário inteligente"
    Quando o usuário preenche o campo "Nome completo" com @NOME_COMPLETO
    E preenche o campo "Data de Nascimento" com @DATA_NASCIMENTO
    E clico no botão "Finalizar Cadastro"
    Então valido que recebi o alerta    fotoPerfil

Cenário 4 - Cadastro sem campo obrigatório "Aceito a coleta de dados para análise personalizada"
    [Tags]    campos_invalidos
    Dado que estou na tela "Cadastrar perfil de usuário inteligente"
    Quando o usuário preenche o campo "Nome completo" com @NOME_COMPLETO
    E preenche o campo "Data de Nascimento" com @DATA_NASCIMENTO
    E carrego uma foto no campo "Foto de Perfil"
    E clico no botão "Finalizar Cadastro"
    Então Valido que recebi o alerta    consentimento

Cenário 5 - Cadastro com campo "Data de Nascimento" inválida
    [Tags]    campos_invalidos
    Dado que estou na tela "Cadastrar perfil de usuário inteligente"
    Quando o usuário preenche o campo "Nome completo" com @NOME_COMPLETO
    E preenche o campo "Data de Nascimento" com @DATA_NASCIMENTO_INVALIDA
    E clico no botão "Finalizar Cadastro"
    Então Valido que recebi o alerta de Data de Nascimento inválida
