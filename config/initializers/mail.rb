ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '587',
    :authentication => :plain,
    :user_name      => "apikey",
    :password       => "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",
    :domain         => 'heroku.com',
    :enable_starttls_auto => true
}

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.default charset: "utf-8"