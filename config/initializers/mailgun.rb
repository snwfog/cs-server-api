ActionMailer::Base.smtp_settings   = {
    :port           => 587,
    :address        => 'smtp.mailgun.org',
    :user_name      => 'postmaster@sandboxb3534b00258f4eeca73f75bea0fbe1d8.mailgun.org',
    :password       => '1hdspkhxm-b0',
    :domain         => 'sandboxb3534b00258f4eeca73f75bea0fbe1d8.mailgun.org',
    :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp

Mailgun.configure do |config|
  config.api_key = ENV['MAILGUN_APIKEY']
  config.domain  = 'sandboxb3534b00258f4eeca73f75bea0fbe1d8.mailgun.org'
end