*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://front.serverest.dev/login
${Browser}    chrome
${CADASTRAR}    //a[@class='btn btn-link'][contains(.,'Cadastre-se')]
${INPUT_NOME}    //input[contains(@type,'text')]
${INPUT_EMAIL}    //input[contains(@type,'email')]
${INPUT_SENHA}    //input[contains(@type,'password')]
${INPUT_ADM}    //input[contains(@type,'checkbox')]
${BT_CADASTRAR}    //button[contains(@type,'submit')]
${ALERT_CAD_SUCESS}    //div[@class='alert alert-dismissible alert-primary']

*** Test Cases ***
Teste cadastro
    Abrir navegador
    Dado que acesso a tela de cadastro
    E clico em Cadastrar
    Quando preencho o nome
    E preencho o email
    E preencho a senha
    Quando seleciono o checkbox de administrador
    Então finalizo o cadastro

*** Keywords ***
Abrir navegador
    Open Browser    about:blank    ${Browser}
    Maximize Browser Window

Dado que acesso a tela de cadastro
    Go To    ${URL}

E clico em Cadastrar
    Click Element    ${CADASTRAR}

Quando preencho o nome
    Input Text    ${INPUT_NOME}    CQP-TESTE2
    
E preencho o email
    Input Text    ${INPUT_EMAIL}    cqp2@gmail.com

E preencho a senha
    Input Text    ${INPUT_SENHA}    1234

Quando seleciono o checkbox de administrador
    Select Checkbox    ${INPUT_ADM}

Então finalizo o cadastro
    Click Button    ${BT_CADASTRAR}
    Wait Until Element Is Visible    ${ALERT_CAD_SUCESS}