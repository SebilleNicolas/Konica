class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  #before_action :set_locale
  before_filter :configure_permitted_parameters, if: :devise_controller?
  @@NbIncidents = Incident.all.count
  
  
  def after_sign_in_path_for(resource)
    if current_user.valide?
      request.env['omniauth.origin'] || stored_location_for(resource) || root_path
    end
  end

   protected
  
    def set_pdf_locale
      I18n.locale = current_user.country.eql? "France" ? :fr : :en
    end
  
    def set_locale
      I18n.locale = extract_locale_from_accept_language_header
    end


  def configure_permitted_parameters

    #METHODE 1 (marche)
    # registration_params = [ :last_name,:first_name,:login, :email, :current_password,:password, :password_confirmation]

    # if params[:action] == 'update'
      
    #   devise_parameter_sanitizer.for(:account_update) { 
    #     |u| u.permit(registration_params )
    #   } 

    # elsif params[:action] == 'create'
    #   devise_parameter_sanitizer.for(:sign_up) { 
    #     |u| u.permit(registration_params) 
    #   }
    # end

    

  #METHODE 3 (Fonctionne)
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:first_name, :last_name, :username, :email,:login, :password, :password_confirmation, :role, :valide)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:first_name, :last_name, :username, :login, :email,:current_password, :password, :password_confirmation, :role)
    end


  end
  
  private
    def extract_locale_from_accept_language_header
      request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    end
    

end


