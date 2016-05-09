# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

#dont need mail settings here since its already in production.rb
    # General Settings
    # config.app_domain = 'vitalsynapse-staging.herokuapp.com'
    #
    # # Email
    # config.action_mailer.delivery_method = :smtp
    # config.action_mailer.perform_deliveries = true
    # config.action_mailer.default_url_options = { host: vitalsynapse-staging.herokuapp.com }
    # config.action_mailer.smtp_settings = {
    #   address: 'smtp.gmail.com',
    #   port: '587',
    #   enable_starttls_auto: true,
    #
    #   authentication: :plain,
    #   domain: 'vitalsynapse-staging.herokuapp.com'
    # }

    ActionMailer::Base.smtp_settings = {
      :address        => 'smtp.sendgrid.net',
      :port           => '587',
      :authentication => :plain,
      :user_name      => ENV['vsnoreply'],
      :password       => ENV['VSsocial123'],
      :domain         => 'vitalsynapse-staging.herokuapp.com',
      :enable_starttls_auto => true
    }
