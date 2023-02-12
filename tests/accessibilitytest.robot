*** Settings ***
Library    SeleniumLibrary
Library    AxeLibrary
Resource          ../resources/resource.robot
Test Setup        Abrir navegador
Test Teardown     Fechar navegador

*** Variables ***
${HOME_URL_MOBLY}             https://www.mobly.com.br
${HOME_URL_MAGALU}            https://www.magazineluiza.com.br/
${HOME_URL_AMERICANAS}        https://www.americanas.com.br/

*** Test Cases ***
Mobly Accessibility Test
   # direciona o navegador para a pagina a ser analisada
   Go To    ${HOME_URL_MOBLY} 
   
   # executa o teste de acessibilidade
   &{results}=    Run Accessibility Tests   ./reports/mobly.json
   Log   Violations Count: ${results.violations}

   # registra as inconformidades no arquivo de log 
   Log Readable Accessibility Result    violations

   # Compara se a quantidade de violaçoes é menor que 1
   #...  caso descomente a linha abaixo o teste  quando apresentar inconformidades ira falhar,
   #...  porem os resultados serao gravados de ambas as maneiras no log.
   #Should Be True    ${results.violations} < 1

Magalu Accessibility Test
   # direciona o navegador para a pagina a ser analisada
   Go To    ${HOME_URL_MAGALU} 
   
   # executa o teste de acessibilidade
   &{results}=    Run Accessibility Tests   ./reports/magalu.json
   Log   Violations Count: ${results.violations}

   # registra as inconformidades no arquivo de log 
   Log Readable Accessibility Result    violations
   
   # Compara se a quantidade de violaçoes é menor que 1
   #...  caso descomente a linha abaixo o teste  quando apresentar inconformidades ira falhar,
   #...  porem os resultados serao gravados de ambas as maneiras no log.
   #Should Be True    ${results.violations} < 1

Americanas Accessibility Test
   # direciona o navegador para a pagina a ser analisada
   Go To    ${HOME_URL_AMERICANAS} 
   
   # executa o teste de acessibilidade
   &{results}=    Run Accessibility Tests   ./reports/americanas.json
   Log   Violations Count: ${results.violations}

   # registra as inconformidades no arquivo de log 
   Log Readable Accessibility Result    violations
   
   # Compara se a quantidade de violaçoes é menor que 1
   #...  caso descomente a linha abaixo o teste  quando apresentar inconformidades ira falhar,
   #...  porem os resultados serao gravados de ambas as maneiras no log.
   #Should Be True    ${results.violations} < 1