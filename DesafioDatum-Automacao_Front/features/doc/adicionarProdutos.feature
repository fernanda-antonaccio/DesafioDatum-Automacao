#language: pt

@adicionarItens
Funcionalidade: Catalogo - Adicionar Produtos

#História do Usuário #1:
#Como um cliente cadastrado no automationpractice.com
#Eu quero fazer a compra de ao menos dois produtos
#Para que eu possa me vestir melhor

# História do Usuário #1
@adicionarItemBusca
Cenário: Adicionar produtos - Utilizando campo de Busca
Dado que estou logado no sistema
Quando utilizo o campo de busca para pesquisar o produto "Blouse"
E clico no botão Add to cart do produto "Blouse"
E clico no botão Continue shopping
E utilizo o campo de busca para pesquisar o produto "Printed Chiffon Dress"
E clico no botão Add to cart do produto "Printed Chiffon Dress"
E clico no botão Proceed to checkout
Então eu sou direcionado para tela de carrinho campras
E devo verificar se contém "2" produtos no carrinho

# História do Usuário #1
@adicionarItemAbas
Cenário: Adicionar produtos - Navegando por Abas
Dado que estou logado no sistema
Quando eu clico na aba "Women"
E clico no botão More do produto "Faded Short Sleeve T-shirts"
E clico no botão Add to cart
E clico no botão Continue shopping
E utilizo o campo de busca para pesquisar o produto "Blouse"
E clico no botão More do produto "Blouse"
E adiciono mais "2" qauntidades no produto
E seleciono a cor "White"
E clico no botão Add to cart
E clico no botão Proceed to checkout
Então eu sou direcionado para tela de carrinho campras
E devo verificar se contém "2" produtos no carrinho

@adicionarItem
Cenário: Adicionar produtos - Navegando por Abas e campo de Busca
Dado que estou logado no sistema
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