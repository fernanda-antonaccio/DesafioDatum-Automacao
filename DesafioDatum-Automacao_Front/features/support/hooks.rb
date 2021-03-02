Before do
    page.current_window.resize_to(1800, 1050)
    @loginPage = LoginPage.new
    @cadastroUsuarioPage = CadastroUsuario.new
    @addProdutosPage = AdicionarProdutos.new
    @finalizaVendaPage = FinalizaVenda.new
end