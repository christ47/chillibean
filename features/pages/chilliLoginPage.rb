require 'capybara/dsl'

# The Username and/or Passcode you entered does not match our records. If it exists, this account has been locked. Please check the associated email or click Forgotten your password

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

    def clickIUnderstandButton
        find('button', text: "I understand").click
    end
end