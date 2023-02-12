*** Settings ***
Library    SeleniumLibrary
Library    AxeLibrary
Resource          resources/resource.robot
Test Setup        Abrir navegador
Test Teardown     Fechar navegador

*** Variables ***
${HOME_URL_MOBLY}             https://www.mobly.com.br
${HOME_URL_MAGALU}            https://www.magazineluiza.com.br/
${HOME_URL_AMERICANAS}        https://www.americanas.com.br/

*** Test Cases ***
Mobly Accessibility Test
   Go To    ${HOME_URL_MOBLY} 
   
   # execute accessibility tests
   &{results}=    Run Accessibility Tests   mobly.json
   Log   Violations Count: ${results.violations}

   # log violation result to log.html
   Log Readable Accessibility Result    violations
   
   #Should Be True    ${results.violations} < 1

Magalu Accessibility Test
   Go To    ${HOME_URL_MAGALU} 
   
   # execute accessibility tests
   &{results}=    Run Accessibility Tests   magalu.json
   Log   Violations Count: ${results.violations}

   # log violation result to log.html
   Log Readable Accessibility Result    violations
   
   #Should Be True    ${results.violations} < 1

Americanas Accessibility Test
   Go To    ${HOME_URL_AMERICANAS} 
   
   # execute accessibility tests
   &{results}=    Run Accessibility Tests   americanas.json
   Log   Violations Count: ${results.violations}

   # log violation result to log.html
   Log Readable Accessibility Result    violations
   
   #Should Be True    ${results.violations} < 1