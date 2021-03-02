Quando('eu insiro o meu email {string} no campo Email address') do |email|
    @cadastroUsuarioPage.inserirEmail(email)
end
  
Quando('clico np botão Create an accont') do
    @cadastroUsuarioPage.btnCreate
end
  
Quando('preencho o restante do formulario com os meus dados pessoais') do
    expect(@cadastroUsuarioPage.verificacao).to have_text "CREATE AN ACCOUNT"
end
  
Quando('clico no botão que contem a sigla {string} no campo Title') do |title|
    @cadastroUsuarioPage.inserirTitle(title)
end
  
Quando('insiro o meu nome {string} no campo First name') do |nome|
    @cadastroUsuarioPage.inserirFirstName(nome)
end
  
Quando('insiro o meu sobrenome {string} no campo Last name') do |sobrenome|
    @cadastroUsuarioPage.inserirLastName(sobrenome)
end
  
Quando('insiro a minha senha {string} no campo Password') do |senha|
    @cadastroUsuarioPage.inserirPassword(senha)
end
  
Quando('insiro o meu endereço {string} no campo Address') do |endereco|
    @cadastroUsuarioPage.inserirAddress(endereco)
end
  
Quando('insiro a minha cidade {string} no campo City') do |cidade|
    @cadastroUsuarioPage.inserirCity(cidade)
end
  
Quando('seleciono o estado {string} no campo State') do |estado|
    @cadastroUsuarioPage.inserirState(estado)
end
  
Quando('insiro o código postal {string} no campo Zip Postal Code') do |codigo|
    @cadastroUsuarioPage.inserirPostalCode(codigo)
end
  
Quando('insiro o número {string} no campo Mobile phone') do |numero|
    @cadastroUsuarioPage.inserirMobile(numero)
end
  
Quando('insiro o email alternativo {string}') do |emailAlterna|
    @cadastroUsuarioPage.inserirEmailAlterna(emailAlterna)
end
  
Quando('clico no botão Register') do
    @cadastroUsuarioPage.btnRegister
end

Então('devo ver uma mensagem de erro {string}') do |mensagem|
    expect(@cadastroUsuarioPage.mensagemAlerta).to have_text mensagem
end