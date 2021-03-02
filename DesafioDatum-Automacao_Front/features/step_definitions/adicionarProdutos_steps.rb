Dado('que estou logado no sistema') do
    steps %{
        Dado que estou na tela de inicio do site
        Quando eu insiro o email "datumqatest@soprock.com" e senha "datum2021"
        E clico no botão Sing In
    }
end
  
Quando('utilizo o campo de busca para pesquisar o produto {string}') do |produto|
    @addProdutosPage.campoBusca(produto)
end

Quando('eu clico na aba {string}') do |nomeAba|
    @addProdutosPage.abas(nomeAba)
end
  
Quando('clico no botão Add to cart') do
    @addProdutosPage.btnAddToCart_DetalhesProduto
end

Quando('clico no botão Add to cart do produto {string}') do |produto|
    @addProdutosPage.btnAddToCart_Catalogo(produto)
end

Quando('clico no botão More do produto {string}') do |produto|
    @addProdutosPage.btnMore_Catalogo(produto)
end
  
Quando('clico no botão Continue shopping') do
    @addProdutosPage.btnContinueShopping
end
  
Quando('clico no botão Proceed to checkout') do
    @addProdutosPage.btnProceedCheckout
end

Quando('adiciono mais {string} qauntidades no produto') do |quant|
    @addProdutosPage.alterarQuantidade(quant)
end
  
Quando('seleciono a cor {string}') do |cor|
    @addProdutosPage.alterarCor(cor)
end
  
Então('eu sou direcionado para tela de carrinho campras') do
    expect(@addProdutosPage.verificarCarrinho).to have_text "SHOPPING-CART SUMMARY"
end
  
Então('devo verificar se contém {string} produtos no carrinho') do |num|
    expect(@addProdutosPage.verificarQuantProdutos.size).to be == num.to_i
end