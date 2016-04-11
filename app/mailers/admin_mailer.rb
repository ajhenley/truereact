class AdminMailer < ApplicationMailer
  default from: "no-reply@truereaction.com"
  default to: "ajhenley@gmail.com"
  default bcc: "ajhenley@gmail.com"
  
  def more_surveys(user)
    @user = user
    mail(to: @user.email, subject: "Spring 2016 Course Evaluations for #{@user.email}")
  end
end
