*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}        https://hportal.webmotors.com.br/
${BROWSER}    chrome

*** Keywords ***
Dado ${keyword}
    Run keyword  ${keyword}

Quando ${keyword}
    Run keyword  ${keyword}

Então ${keyword}
    Run keyword  ${keyword}

E ${keyword}
    Run keyword  ${keyword}

Abrir navegador
    Open Browser   ${URL}   ${BROWSER}

Fechar Navegador
    Close Browser

acesso a pagina home
    Click Element    css=#root > div.sc-bdVaJa.bjRMar > div.sc-htpNat.iPWKQm > button

digitar nome do veiculo "${VEICULO}"
    Input Text  id=searchBar  ${VEICULO}
    Capture Page Screenshot

clicar no botão ver ofertas
    Click Element  css=#WhiteBox > div.NavBar > div.NavBar--content > div > div > div > div > div > div > a:nth-child(2)

validar demonstração de veículo pesquisado
     Wait Until Element Is Visible    xpath=//h1[@class="title-search"][contains(text(),"Carros Novos e Usados em Todo o Brasil")]  timeout=20
     Page Should Contain Element         xpath=//*[@id="root"]//p[@class="sc-bRBYWo gLEvJK"][contains(text(),"carros encontrados")]

Validar demonstração de mensagem "Não encontramos este termo, verifique a ortografia"
     Sleep    10
     Page Should Contain Element    xpath=//div[@class="SearchBar__results__result no-result"][contains(text(),"Não encontramos este termo, verifique a ortografia")]
