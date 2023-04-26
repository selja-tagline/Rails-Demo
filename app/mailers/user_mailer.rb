class UserMailer < ApplicationMailer
    def welcome_email(user)
        p "::::::::: Welcome method Called ::::::::"
        @user = user
        mail(to: @user.email, subject: 'Welcome to my Demo Site !!')
    end
end
