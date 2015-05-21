class UserMailer < ActionMailer::Base
  default from: "AdminHotline@konicaminolta.fr"

  def welcome_email(user)
    @user = user
    @url  = 'http://150.100.100.31:3000/users/sign_in'
    mail(to: @user.email, subject: 'Votre compte a été validé')
  end
end
