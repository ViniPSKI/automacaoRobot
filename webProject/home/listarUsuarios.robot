*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords.robot

*** Variables ***
${URL}               https://front.serverest.dev/login
${Browser}           chrome
${NAV_LIST_USERS}    //a[@data-testid='listar-usuarios'][contains(.,'Listar Usuários')]
${LISTA_USERS}       //table[@class='table table-striped'][contains(.,'CQP-TESTE2')]

*** Test Cases ***
Teste 01 - Listando usuarios - NavBar
    Dado que acesso o site
    Login padrão
    Quando pressiono Listar Usuários
    Então verifico meu usuário de login


*** Keywords ***
Dado que acesso o site
    Open Browser    about:blanck    ${Browser}
    Go To    ${URL}
    Maximize Browser Window

Quando pressiono Listar Usuários
    Click Element    ${NAV_LIST_USERS}
    Wait Until Page Contains    Lista dos usuários

Então verifico meu usuário de login
    Wait Until Element Contains    ${LISTA_USERS}    CQP-TESTE2