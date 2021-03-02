Dado('tenho produtos do primeiro cenário no carrinho de compras') do
    steps %{
        Quando utilizo o campo de busca para pesquisar o produto "Blouse"
        E clico no botão Add to cart do produto "Blouse"
        E clico no botão Continue shopping
        E utilizo o campo de busca para pesquisar o produto "Printed Chiffon Dress"
        E clico no botão Add to cart do produto "Printed Chiffon Dress"
        E clico no botão Proceed to checkout
        Então eu sou direcionado para tela de carrinho campras
        E devo verificar se contém "2" produtos no carrinho
    }
end

Dado('tenho produtos do terceiro cenário no carrinho de compras') do
    steps %{
        Quando eu clico na aba "Dresses"
        E clico no botão Add to cart do produto "Printed Chiffon Dress"
        E clico no botão Continue shopping
        E utilizo o campo de busca para pesquisar o produto "Faded Short Sleeve T-shirts"
        E clico no botão More do produto "Faded Short Sleeve T-shirts"
        E adiciono mais "3" qauntidades no produto
        E seleciono a cor "Blue"
        E clico no botão Add to cart
        E clico no botão Continue shopping
        E eu clico na aba "Women"
        E clico no botão Add to cart do produto "Blouse"
        E clico no botão Proceed to checkout
        E devo verificar se contém "3" produtos no carrinho
    }
end
  
Quando('eu clico no botão Proceed to Checkout') do
    @finalizaVendaPage.btnProceedCheckout
end

Quando('eu clico novamente no botão Proceed to checkout') do
    @finalizaVendaPage.btnProceedCheckout2
end
  
Quando('clico na caixa de Terms of service') do
    @finalizaVendaPage.campoTerms
end
  
Quando('escolho a opção de pagamento Pay by bank wire') do
    @finalizaVendaPage.campoBankWire
    expect(page).to have_text "You have chosen to pay by bank wire. Here is a short summary of your order:"
end

Quando('escolho a opção de pagamento Pay by check') do
    @finalizaVendaPage.campoCheck
    expect(page).to have_text "You have chosen to pay by check. Here is a short summary of your order:"
end
  
Quando('eu clico no botão I confirm my order') do
    @finalizaVendaPage.btnConfirmOrder
end
  
Então('devo ver a mensagem {string}') do |mensagem|
    expect(@finalizaVendaPage.verificaMsg).to have_text mensagem
end