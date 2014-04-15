class UserMailer < ActionMailer::Base
  default from: "support@mysterious-wildwood-2634.herokuapp.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @name = user.email.split('@').first

    mail to: user.email
    # @greeting = "Hi"

    # mail to: "to@example.org"
  end
end
