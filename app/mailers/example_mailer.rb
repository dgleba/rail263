
class ExampleMailer < ActionMailer::Base
  #default from: "dgleba@stackpole.com"
  default from: "dgleba@gmail.com"

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'User Created')
  end
end

