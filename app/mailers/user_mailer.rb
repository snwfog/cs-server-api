class UserMailer < ActionMailer::Base
  default from: "postmaster@sandboxb3534b00258f4eeca73f75bea0fbe1d8.mailgun.org"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.activation_needed_email.subject
  #
  def activation_needed_email(user)
    @user = user
    mail subject: "Activation required",
         to:      "donchoa.developer@gmail.com"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.activation_success_email.subject
  #
  def activation_success_email(user)
    @user = user
    mail subject: "Succesfully activated!",
         to:      "donchoa.developer@gmail.com"
  end
end
