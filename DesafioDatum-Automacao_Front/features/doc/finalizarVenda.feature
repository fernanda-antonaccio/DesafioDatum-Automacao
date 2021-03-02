#language: pt

@finalizaVenda
Funcionalidade: Carrinho de Compras - Finaliza Venda

# História do Usuário #1
@finalizaBankWire
Cenário: Forma de pagamento Bank Wire
Dado que estou logado no sistema
E tenho produtos do primeiro cenário no carrinho de compras
Quando eu clico no botão Proceed to Checkout
E eu clico novamente no botão Proceed to checkout
E clico na caixa de Terms of service
E eu clico novamente no botão Proceed to checkout
E escolho a opção de pagamento Pay by bank wire
E eu clico no botão I confirm my order
Então devo ver a mensagem "ORDER CONFIRMATION"

@finalizaCheck
Cenário: Forma de pagamento Check
Dado que estou logado no sistema
E tenho produtos do terceiro cenário no carrinho de compras
Quando eu clico no botão Proceed to Checkout
E eu clico novamente no botão Proceed to checkout
E clico na caixa de Terms of service
E eu clico novamente no botão Proceed to checkout
E escolho a opção de pagamento Pay by check
E eu clico no botão I confirm my order
Então devo ver a mensagem "ORDER CONFIRMATION"