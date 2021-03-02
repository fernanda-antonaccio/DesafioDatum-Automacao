class FinalizaVenda
    include Capybara::DSL

    def btnProceedCheckout
        page.execute_script 'window.scrollBy(0,500)'
        find(:xpath ,"//body/div[@id='page']/div[2]/div[1]/div[3]/div[1]/p[2]/a[1]/span[1]", visible: false).click
    end

    def btnProceedCheckout2
        click_button "Proceed to checkout"
    end

    def campoTerms
        find("#uniform-cgv").click
    end

    def campoBankWire
        find(".payment_module .bankwire").click
    end

    def campoCheck
        find(".payment_module .cheque").click
    end

    def btnConfirmOrder
        click_button "I confirm my order"
    end

    def verificaMsg
        find(".page-heading")
    end
end