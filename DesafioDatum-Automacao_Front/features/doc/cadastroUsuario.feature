            #language: pt

            @cadastroUsuarios
            Funcionalidade: Cadastro de Usuario

            #CENÁRIO BÔNUS: Automatize um novo cenário para a história acima no qual é realizado o cadastro de um novo usuário.

            @cadastroSucesso
            Cenário: Cadastro com Sucesso
            Dado que estou na tela de inicio do site
            Quando eu insiro o meu email "Fernando@antonaccio.com" no campo Email address
            E clico np botão Create an accont
            E preencho o restante do formulario com os meus dados pessoais
            E clico no botão que contem a sigla "Mr." no campo Title
            E insiro o meu nome "Fernando" no campo First name
            E insiro o meu sobrenome "Antonaccio" no campo Last name
            E insiro a minha senha "ABC123" no campo Password
            E insiro o meu endereço "Rua da Paz" no campo Address
            E insiro a minha cidade "Manaus" no campo City
            E seleciono o estado "Kansas" no campo State
            E insiro o código postal "12345" no campo Zip Postal Code
            E insiro o número "92994567890" no campo Mobile phone
            E insiro o email alternativo "teste5@teste.com"
            E clico no botão Register
            Então devo ser autenticado
            E devo ver "Fernando Antonaccio" na área logada

            @cadastroInvalido1
            Cenário: Cadastro Inválido - Primeira Página - Usuario já Cadastrado
            Dado que estou na tela de inicio do site
            Quando eu insiro o meu email "Fernando@antonaccio.com" no campo Email address
            E clico np botão Create an accont
            Então devo ver uma mensagem de erro "An account using this email address has already been registered."

            # Farei somente dos campos obrigatorios
            @cadastroInvalido2
            Esquema do Cenario: Cadastro Inválido - Segunda Página

            Dado que estou na tela de inicio do site
            Quando eu insiro o meu email <email> no campo Email address
            E clico np botão Create an accont
            E preencho o restante do formulario com os meus dados pessoais
            E insiro o meu nome <firstName> no campo First name
            E insiro o meu sobrenome <lastName> no campo Last name
            E insiro a minha senha <password> no campo Password
            E insiro o meu endereço <address> no campo Address
            E insiro a minha cidade <city> no campo City
            E seleciono o estado <state> no campo State
            E insiro o código postal <postalcode> no campo Zip Postal Code
            E insiro o número <mobile> no campo Mobile phone
            E insiro o email alternativo <alteremail>
            E clico no botão Register
            Então devo ver uma mensagem de erro <texto>

            Exemplos:
            | email            | firstName  | lastName  | password                               | address    | city     | state     | postalcode | mobile        | alteremail        | texto                                            |
            | "user@datum.com" | ""         | ""        | ""                                     | ""         | ""       | "Florida" | ""         | ""            | ""                | "There are 8 errors"                             |
            | "user@datum.com" | "Nanda123" | "Mason"   | "123456"                               | "Rua Flor" | "Flores" | "Florida" | "00000"    | "92994562778" | "teste@teste.com" | "firstname is invalid."                          |
            | "user@datum.com" | "Nanda"    | "Mason12" | "123456"                               | "Rua Flor" | "Flores" | "Florida" | "00000"    | "92994562778" | "teste@teste.com" | "lastname is invalid."                           |
            | "user@datum.com" | "Nanda"    | "Mason"   | "1234"                                 | "Rua Flor" | "Flores" | "Florida" | "00000"    | "92994562778" | "teste@teste.com" | "passwd is invalid."                             |
            | "user@datum.com" | "Nanda"    | "Mason"   | "123456789123456789123456789123456789" | "Rua Flor" | "Flores" | "Florida" | "00000"    | "92994562778" | "teste@teste.com" | "passwd is too long. Maximum length: 32"         |
            | "user@datum.com" | "Nanda"    | "Mason"   | "123456"                               | "Rua Flor" | "Flores" | "Florida" | "123"      | "92994562778" | "teste@teste.com" | "The Zip/Postal code you've entered is invalid." |
            | "user@datum.com" | "Nanda"    | "Mason"   | "123456"                               | ""         | ""       | "Florida" | "00000"    | ""            | ""                | "There are 4 errors"                             |