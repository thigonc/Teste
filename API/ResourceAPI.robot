*** Settings ***
Documentation  Documentação da API: https://desafioonline.webmotors.com.br/swagger/ui/index#!/OnlineChallenge
Library       RequestsLibrary
Library       Collections

*** Variables ***
${URL_API}  https://desafioonline.webmotors.com.br/api/

*** Keywords ***
Conectar API
  Create Session    APIWeb    ${URL_API}

Requisitar todas as marcas
  ${MARCAS}  Get Request    APIWeb    OnlineChallenge/Make
  Log    ${MARCAS.text}
  Set Test Variable    ${MARCAS}

Conferir o status code
  [Arguments]     ${STATUS_MARCAS}
  Should Be Equal As Strings    ${MARCAS.status_code}    ${STATUS_MARCAS}

Conferir o reason
  [Arguments]     ${REASON_MARCAS}
  Should Be Equal As Strings    ${MARCAS.reason}    ${REASON_MARCAS}

Conferir as marcas
  Length Should Be    ${MARCAS.json()}    3

Requisitar modelos "${ID}"
  ${MODELOS}  Get Request    APIWeb    OnlineChallenge/Model?MakeID=${ID}
  Log    ${MODELOS.text}
  Set Test Variable    ${MODELOS}

Conferir o status code modelos
  [Arguments]     ${STATUS_MODELOS}
  Should Be Equal As Strings    ${MODELOS.status_code}    ${STATUS_MODELOS}

Conferir o reason modelos
  [Arguments]     ${REASON_MODELOS}
  Should Be Equal As Strings    ${MODELOS.reason}    ${REASON_MODELOS}}

Requisitar versoes "${ID}"
  ${VERSOES}  Get Request    APIWeb    OnlineChallenge/Version?ModelID=${ID}
  Log    ${VERSOES.text}
  Set Test Variable    ${VERSOES}

Conferir o status code versoes
  [Arguments]     ${STATUS_VERSOES}
  Should Be Equal As Strings    ${VERSOES.status_code}    ${STATUS_VERSOES}

Conferir o reason versoes
  [Arguments]     ${REASON_VERSOES}
  Should Be Equal As Strings    ${VERSOES.reason}    ${REASON_VERSOES}}
