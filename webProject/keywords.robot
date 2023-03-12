*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://front.serverest.dev/login
${Browser}    chrome
${SUC_EMAIL}    //input[contains(@type,'email')]
${SUC_SENHA}    //input[contains(@type,'password')]
${BT_ENTRAR}    //button[contains(@type,'submit')]

*** Keywords ***
Login padrão
    Input Text    ${SUC_EMAIL}    cqp2@gmail.com
    Input Password    ${SUC_SENHA}    1234
    Click Button    ${BT_ENTRAR}
    Wait Until Page Contains    Bem Vindo