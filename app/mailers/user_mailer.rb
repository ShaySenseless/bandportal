class UserMailer < ApplicationMailer
  def send_welcome_mail(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to BerlinBand')
  end
end