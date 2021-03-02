class AdicionarProdutos
    include Capybara::DSL

    def campoBusca(produto)
        busca = find("#search_query_top").set produto
        busca.send_keys :enter
    end

    def abas(nomeAba)
        find("#block_top_menu").find("a[title="+ nomeAba +"]").click
    end

    def btnAddToCart_DetalhesProduto
        click_button "Add to cart"
    end

    def btnAddToCart_Catalogo(produto)
        sleep 2
        add = find("h5[itemprop='name'] a[class='product-name']", text: produto)
        add.hover
        find("a[class='button ajax_add_to_cart_button btn btn-default']").click
    end

    def btnMore_Catalogo(produto)
        sleep 2
        add = find("h5[itemprop='name'] a[class='product-name']", text: produto)
        add.hover
        find("a[class='button lnk_view btn btn-default']").click
    end

    def btnContinueShopping
        find("span[title='Continue shopping']").click
    end

    def btnProceedCheckout
        find("a[title='Proceed to checkout']").click
    end

    def alterarQuantidade(quant)
        find("#quantity_wanted").set quant
    end

    def alterarCor(cor)
        find("#color_to_pick_list").find("a[name="+ cor +"]").click
    end

    def verificarCarrinho
        find("#cart_title")
    end

    def verificarQuantProdutos
        all("#cart_summary tbody tr")
    end
end