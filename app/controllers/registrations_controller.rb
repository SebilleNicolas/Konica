class RegistrationsController < Devise::RegistrationsController

  def update
      @user = User.find(current_user.id)

      successfully_updated = if needs_password?(@user, params)
        @user.update_with_password(devise_parameter_sanitizer.sanitize(:account_update))
      else
        # remove the virtual current_password attribute
        # update_without_password doesn't know how to ignore it
        params[:user].delete(:current_password)
        @user.update_without_password(devise_parameter_sanitizer.sanitize(:account_update))
      end

      if successfully_updated
        set_flash_message :notice, :updated
        # Sign in the user bypassing validation in case their password changed
        sign_in @user, :bypass => true
        redirect_to after_update_path_for(@user)
      else
        render "edit"
      end
       @titre = "Modification"
    end

  
  def new 
    @user = User.new
    @titre = "Inscription"
  end
  def edit
    @titre = "Modification"
  end

  def create
    build_resource(sign_up_params)
    resource_saved = resource.save
    yield resource if block_given?
    if resource_saved && resource.valide?
      if resource.active_for_authentication? 
        set_flash_message :notice, :signed_up if is_flashing_format?
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      set_flash_message(:notice, :saved) if is_flashing_format?
      clean_up_passwords resource
      @validatable = devise_mapping.validatable?
      if @validatable
        @minimum_password_length = resource_class.password_length.min
      end
      respond_with resource
    end
  end



private

  # check if we need password to update user data
  # ie if password or email was changed
  # extend this as needed
  def needs_password?(user, params)
    user.email != params[:user][:email] ||
      params[:user][:password].present? ||
      params[:user][:password_confirmation].present?
  end
 
  


end