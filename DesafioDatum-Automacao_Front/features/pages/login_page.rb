class LoginPage
    include Capybara::DSL

    def paginaWeb
        visit ""
        find("div[class='header_user_info']").click
    end

    def login(email, senha)
        find("#email").set email
        find("#passwd").set senha  
    end

    def btnLogin
        click_button "Sign in"
    end

    def simAutenticado
        find("#center_column .info-account")
    end

    def naoAutenticado
        page.has_css?("img[src='http://automationpractice.com/img/logo.jpg']")
    end

    def mensagemAlerta
        find("div[class='alert alert-danger']")
    end
end