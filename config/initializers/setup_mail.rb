  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => "gmail.com",
    :user_name            => Figaro.env.EMAIL_USERNAME,
    :password             => Figaro.env.EMAIL_PASSWORD,
    :authentication       => "plain",
    :enable_starttls_auto => true
  }
