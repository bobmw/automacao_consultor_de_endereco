*** Settings ***
Resource   ../config/config.robot
Resource   ../resources/keywords/consulta_keywords.robot
Resource   ../resources/locators/consulta_locators.robot

*** Test Cases ***
Consultar Endereço por CEP
    Dado que estou na página de consulta de endereço
    Quando insiro um CEP válido
    E clico no botão de consultar por CEP
    Então devo ver os dados de endereço para o CEP consultado

Consultar Endereço por Rua
    Dado que estou na página de consulta de endereço
    Quando insiro uma rua, estado e cidade válidos
    E clico no botão de consultar por endereço
    Então devo ver os dados de endereço para o endereço consultado
