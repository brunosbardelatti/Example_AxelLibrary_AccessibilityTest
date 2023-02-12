*** Settings ***
Library           OperatingSystem
Library           String
Library           Collections
Library           SeleniumLibrary

*** Variables ***
${BROWSER}    Firefox

*** Keywords ***
#### Setup e Teardown
Abrir navegador
    Open Browser  about:blank  ${BROWSER}
    maximize Browser Window
    
Fechar navegador
    Close Browser
