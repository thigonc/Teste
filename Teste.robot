*** Settings ***
Resource        ../resource/Resource.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Case ***
Caso de Teste 01: Pesquisar Veículo existente
    Acessar pagina home
    Digitar nome do veiculo "gol"
    Clicar no botão ver ofertas
    Validar demonstração de veículo pesquisado

Caso de Teste 02: Pesquisar Veículo não existente
    Acessar pagina home
    Digitar nome do veiculo "inexistente"
    Validar demonstração de mensagem "Não encontramos este termo, verifique a ortografia"


***keywords***
