*** Settings ***
Resource   ../../config/config.robot
Resource   ../locators/consulta_locators.robot

*** Keywords ***
Dado que estou na página de consulta de endereço
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    Consulta de Endereço

Quando insiro um CEP válido
    Input Text    ${CEP_INPUT}    01310915

E clico no botão de consultar por CEP
    Click Button    ${CEP_BUTTON}
    Wait Until Page Contains Element    ${CEP_RESULT}
    Sleep    2s 
Então devo ver os dados de endereço para o CEP consultado
    Element Should Contain    ${CEP_RESULT}    Rua: Avenida Paulista
    Element Should Contain    ${CEP_RESULT}    Bairro: Bela Vista
    Element Should Contain    ${CEP_RESULT}    Cidade: São Paulo
    Element Should Contain    ${CEP_RESULT}    Estado: SP
    Element Should Contain    ${CEP_RESULT}    CEP: 01310-915

Quando insiro uma rua, estado e cidade válidos
    Input Text    ${RUA_INPUT}    Avenida Paulista
    Input Text    ${ESTADO_INPUT}    SP
    Input Text    ${CIDADE_INPUT}    São Paulo

E clico no botão de consultar por endereço
    Click Button    ${ENDERECO_BUTTON}
    Wait Until Page Contains Element    ${ENDERECO_RESULT}
    Sleep    2s

Então devo ver os dados de endereço para o endereço consultado
    Element Should Contain    ${ENDERECO_RESULT}    Rua: Avenida Paulista
    Element Should Contain    ${ENDERECO_RESULT}    Bairro: Bela Vista
    Element Should Contain    ${ENDERECO_RESULT}    Cidade: São Paulo
    Element Should Contain    ${ENDERECO_RESULT}    Estado: SP
