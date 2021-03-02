            #language: pt

            @login
            Funcionalidade: Login

            @loginValido
            Cenário: Login Valido
            Dado que estou na tela de inicio do site
            Quando eu insiro o email "datumqatest@soprock.com" e senha "datum2021"
            E clico no botão Sing In
            Então devo ser autenticado
            E devo ver "Datum QA Test" na área logada

            @loginInvalido
            Esquema do Cenario: Login Invalido
            Dado que estou na tela de inicio do site
            Quando eu insiro o email <login> e senha <senha>
            E clico no botão Sing In
            Então não devo ser autenticado
            E devo ver a mensagem de alerta <texto>

            Exemplos:
            | login                   | senha       | texto                        |
            | "datumqatest@gmail.com" | "999999"    | "Authentication failed."     |
            | "userxyz@yahoo.com"     | "datum2021" | "Authentication failed."     |
            | ""                      | ""          | "An email address required." |
            | ""                      | "datum2021" | "An email address required." |
            | "datumqatest@gmail.com" | ""          | "Password is required."      |