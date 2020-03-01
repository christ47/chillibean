require 'capybara/dsl'

class ChillibeanLoginPage
    include Capybara::DSL

    def initialize
        @url = 'https://chillipharm.com/sign_in'
        @email = 'anyones@username.com'
    end

    def emailAddress
        @email
    end

    def visitHomepage
        visit(@url)
    end

    def enterIncorrectPassword
        fill_in('user_password', with: 'anything')
    end

    def enterIncorrectUsername
        fill_in('user_email', with: @email)
    end

    def clickLoginButton
        find(:css, '[value="Sign in"]').click
    end

end