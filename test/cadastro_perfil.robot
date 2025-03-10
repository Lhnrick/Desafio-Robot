Language: ptbr
*** Settings ***
Documentation       Acessa os campos da tela e valida o cadastro de usuário

Resource            ../resources/keyword.robot

Suite Setup         Realizar acesso da tela


*** Test Cases ***
Cenário 1 - Cadastro com todos os campos preenchidos
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

Cenário 2 - Cadastro sem campo obrigatório "Nome completo"
    Dado que estou na tela "Cadastrar perfil de usuário inteligente"
    Quando preenche o campo "Data de Nascimento" com @DATA_NASCIMENTO
    E insere sua impressão digital validada no leitor biométrico
    E preenche o campo "Preferências de Navegação"
    E carrego uma foto no campo "Foto de Perfil"
    E seleciono um idioma no campo "Preferência de Idioma"
    E seleciono um nível de privacidade no campo "Nível de Privacidade"
    E marco a opção "Consentimento para Coleta de Dados"
    E clico no botão "Finalizar Cadastro"
    Então valido que recebi o alerta de "Preencha este campo."    nome

Cenário 3 - Cadastro sem campo obrigatório "Data de Nascimento"
    Dado que estou na tela "Cadastrar perfil de usuário inteligente"
    Quando o usuário preenche o campo "Nome completo" com @NOME_COMPLETO
    E insere sua impressão digital validada no leitor biométrico
    E preenche o campo "Preferências de Navegação"
    E carrego uma foto no campo "Foto de Perfil"
    E seleciono um idioma no campo "Preferência de Idioma"
    E seleciono um nível de privacidade no campo "Nível de Privacidade"
    E marco a opção "Consentimento para Coleta de Dados"
    E clico no botão "Finalizar Cadastro"
    Então valido que recebi o alerta de "Preencha este campo."    dataNascimento

Cenário 3 - Cancelamento do cadastro
    Dado que estou na tela "Cadastrar perfil de usuário inteligente"
    Quando insere sua impressão digital validada no leitor biométrico
    E preenche o campo "Preferências de Navegação"
    E carrego uma foto no campo "Foto de Perfil"
    E seleciono um idioma no campo "Preferência de Idioma"
    E seleciono um nível de privacidade no campo "Nível de Privacidade"
    E marco a opção "Consentimento para Coleta de Dados"
    E clico no botão "Cancelar"
    Então o processo de cadastro é cancelado e os campos são limpos
