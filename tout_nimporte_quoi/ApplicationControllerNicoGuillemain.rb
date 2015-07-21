class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  
  before_filter :configure_permitted_parameters, if: :devise_controller?
  # before_action :set_locale
  
  
  
  protected
  
    def set_pdf_locale
      I18n.locale = current_user.country.eql? "France" ? :fr : :en
    end
  
    def set_locale
      I18n.locale = extract_locale_from_accept_language_header
    end

    def mixpanel_headers
      {env: request.env}
    end
  
    def signed_in_root_path
      dashboard_path
    end
  
  
    def build_context(params = {})
      h = {data: params}
      h.merge(ressource_driven_context) if current_user
    end
    
    def ressource_driven_context
      h = Hash.new
      h[:current_user] = current_user unless current_user.nil?
      return h
    end
  
  
    def generate_mxp_uniq_id
      random_token = rand(1..9).to_s << Array.new(9){rand 10}.join      
      cookies[:mixpanel_uniq_id] = cookies[:mixpanel_uniq_id].nil? ? random_token : cookies[:mixpanel_uniq_id]
      return cookies[:mixpanel_uniq_id]
    end
    
    def mixpanel_track(event_name)
      unless params[:logmxp].present?
        if cookies[:mixpanel_uniq_id].nil?
          $mixpanel.track generate_mxp_uniq_id, event_name
        else
          $mixpanel.track cookies[:mixpanel_uniq_id], event_name
        end
      end
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) do |u|
        u.permit(:first_name, :last_name, :business_name, :email, :password)
      end
      devise_parameter_sanitizer.for(:account_update) do |u|
        u.permit([
          :first_name,
          :last_name,
          :business_name,
          :email,
          :invoices_sender_email,
          :password,
          :address,
          :zip_code,
          :city,
          :country,
          :vat_rate,
          :vat_number,
          :capital_stock,
          :siret,
          :legal_form,
          :logo,
          :retrieve_charges_from,
          :logo_cache,
          :numbering_sequences_attributes => [:id, :is_default, :prefix, :sequence_rule, :number_digits, :start_number]
        ])
      end
    end
  
  
  private
    def extract_locale_from_accept_language_header
      request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    end

end
