
# Testes de acessibilidade em RobotFramework

Utilização de RobotFramework com a Library axeLibrary para executar testes de acessibilidade.

## Objetivo do Porjeto

Criar um exemplo pratico do uso da Library AxeLibrary em RobotFramework para testes de acessibilidade. gerando relatorio que apontam as inconformidades da pagina analisada


### Instalação

Para instalar o projeto, com o Python instalado na maquina, siga os passos abaixo

```bash
  $ pip install robotframework
```
```bash
  $ pip install robotframework-selenium2library
```
```bash
  $ pip install robotframework-axelibrary==0.1.5
``` 
### Rodando os testes

Para rodar os testes, execute o seguinte comando

```bash
  robot -d reports ./tests/accessibilitytest.robot
```

Após executar os testes os resultados vão estar na pasta reports do projeto.

## Documentação Axe Library

Git hub da Library: [Axe Library](https://github.com/adiralashiva8/robotframework-axelibrary)

Key words :[Axe Library](https://robotframework-axelibrary.netlify.app/)
