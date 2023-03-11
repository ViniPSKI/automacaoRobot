*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://front.serverest.dev/login
${Browser}    chrome
${SUC_EMAIL}    //input[contains(@type,'email')]
${SUC_SENHA}    //input[contains(@type,'password')]
${BT_ENTRAR}    //button[contains(@type,'submit')]

*** Test Cases ***
Teste 01 - Login com sucesso
    Dado que acesso o site
    Quando insiro o email
    E insiro a senha
    Então clico em entrar

*** Keywords ***
Dado que acesso o site
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window

Quando insiro o email
    Input Text    ${SUC_EMAIL}    cqp2@gmail.com

E insiro a senha
    Input Password    ${SUC_SENHA}    1234

Então clico em entrar
    Click Button    ${BT_ENTRAR}
    Wait Until Page Contains    Bem Vindo