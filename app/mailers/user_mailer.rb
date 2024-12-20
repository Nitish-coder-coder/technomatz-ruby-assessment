class UserMailer < ApplicationMailer
  default from: 'no-reply@example.com'

  def send_url(email, url)
    @url = url
    mail(to: email, subject: 'Here is your requested URL to login')
  end
end
