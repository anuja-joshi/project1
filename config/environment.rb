# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
   :tls => true,
   :address => "smtp.gmail.com",
   :port => 465,
   :domain => "gmail.com",
   :authentication => :login,
   :user_name => "anu.lazy123@gmail.com",
   :password => "anujajoshi"
 }
 require 'development_mail_interceptor'
 ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?