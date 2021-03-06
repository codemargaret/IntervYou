class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def signup_confirmation(user)
    @user = user
    
    mail to: user.email, subject: 'Signup confirmation'
  end
end
