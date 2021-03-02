Dado('que estou na tela de inicio do site') do
    @loginPage.paginaWeb
end

Quando('eu insiro o email {string} e senha {string}') do |email, senha|
    @loginPage.login(email, senha)
end
  
Quando('clico no botão Sing In') do
    @loginPage.btnLogin
end
  
Então('devo ser autenticado') do
    expect(@loginPage.simAutenticado).to have_text "Welcome to your account."
end

Então('devo ver {string} na área logada') do |nome|
    expect(page).to have_text nome
end

Então('não devo ser autenticado') do
    expect(@loginPage.naoAutenticado).to eq true
end
  
Então('devo ver a mensagem de alerta {string}') do |mensagem|
    expect(@loginPage.mensagemAlerta).to have_text mensagem
end