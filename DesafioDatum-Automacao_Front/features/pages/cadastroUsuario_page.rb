class CadastroUsuario
    include Capybara::DSL

    def inserirEmail(email)
        find("#email_create").set email
    end

    def btnCreate
        click_button "Create an account"
    end

    def verificacao
        find(".page-heading")
    end

    def inserirTitle(title)
        find(".clearfix .radio-inline", text: title).click
    end

    def inserirFirstName(nome)
        find("#customer_firstname").set nome
    end

    def inserirLastName(sobrenome)
        find("#customer_lastname").set sobrenome
    end

    def inserirPassword(senha)
        find("#passwd").set senha
    end

    def inserirAddress(endereco)
        find("#address1").set endereco
    end

    def inserirCity(cidade)
        find("#city").set cidade 
    end

    def inserirState(estado)
        state = find("select[name='id_state']", :visible => false).click
        state.find(:option, estado).select_option
    end

    def inserirPostalCode(codigo)
        find("#postcode").set codigo        
    end

    def inserirMobile(numero)
        find("#phone_mobile").set numero    
    end

    def inserirEmailAlterna(emailAlterna)
        find("#alias").set emailAlterna
    end

    def btnRegister
        click_button "Register"
    end

    def mensagemAlerta
        find("div[class='alert alert-danger']")
    end 
end