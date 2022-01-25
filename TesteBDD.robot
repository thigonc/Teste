*** Settings ***
Resource        ../resource/Resource.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Case ***
Cenario 01: Pesquisar Veículo existente
    Dado acesso a pagina home
    Quando digitar nome do veiculo "gol"
    E clicar no botão ver ofertas
    Então validar demonstração de veículo pesquisado

Cenario 02: Pesquisar Veículo não existente
    Dado acesso a pagina home
    Quando digitar nome do veiculo "inexistente"
    E clicar no botão ver ofertas
    Validar demonstração de mensagem "Ops, não encontramos nenhum carro como este!"
    Então Validar demonstração de mensagem "Não encontramos este termo, verifique a ortografia"

*** Keywords ***
