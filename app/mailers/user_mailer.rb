class UserMailer < ActionMailer::Base

	#Configuration de l'envoi des emails
  default from: "AdminHotline@konicaminolta.fr"

  #Envoi d'un mail a l'utilisateur qui a eu son compte validé
  def welcome_email(user)
    @user = user
    @url  = 'http://150.17.156.38:3000/users/sign_in'
    mail(to: @user.email, subject: 'Votre compte a été validé')
  end
end
