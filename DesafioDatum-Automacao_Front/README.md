# DesafioLinx-Automacao

Nome do projeto: DesafioLinx-Automacao

Tecnologias Utilizadas: Foi utilizado a linguagem de programação Ruby, com Capybara e Cucumber.

Instalação do Ruby: https://www.ruby-lang.org/pt/downloads/

Instrução de Execução:

1 - Abrir o arquivo do projeto no Visual Studio Code

2 - Abrir o terminal no programa VSCode e executar "bundle install"

3 - Execução dos testes:

Ainda no terminal do Visual Studio Code, executar:

"cucumber" (Para executar todos os cenários do projeto)

"cucumber -t @tagDoCenario" (Para executar uma tag específica)

Exemplos:

cucumber -t @loginValido (Um cenário específico)

cucumber -t @login (Todos os cenários da feature Login)

OBS: Por padrão, está sendo utilizado o navegador chrome (selenium_chrome) para executar os testes. Alterar no cucumber.yaml para o navegador desejado.

Autor: Fernanda de Medeiros Antonaccio.
