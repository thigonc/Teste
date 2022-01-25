*** Settings ***
Documentation  Documentação da API: https://desafioonline.webmotors.com.br/swagger/ui/index#!/OnlineChallenge
Resource      ResourceAPI.robot
Suite Setup   Conectar API


*** Test Case ***
recuperar marcas cadastradas na webmotors
  Requisitar todas as marcas
  Conferir o status code  200
  Conferir o reason  OK
  Conferir as marcas

recuperar modelos cadastradas na webmotors
  Requisitar modelos "2"
  Conferir o status code modelos  200
  Conferir o reason modelos  OK

recuperar versões cadastradas na webmotors
  Requisitar versoes "2"
  Conferir o status code versoes  200
  Conferir o reason versoes  OK

*** Keywords ***
