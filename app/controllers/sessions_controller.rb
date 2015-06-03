# class Devise::SessionsController < DeviseController
class SessionsController < Devise::SessionsController
	

	def new
		@titre = "Konica Minolta"
		self.resource = resource_class.new(sign_in_params)
		clean_up_passwords(resource)
		yield resource if block_given?

		respond_with(resource, serialize_options(resource))
		
	end
	# GET /resource/sign_in
	def create
		@time = Time.now
		@hour = @time.strftime("%H")
		@minute = @time.strftime("%M:%S")
		@date = @time.strftime("%Y-%m-%d")
		self.resource = warden.authenticate!(auth_options)
		if resource.valide?
			set_flash_message(:notice, :signed_in) if is_flashing_format?	
			sign_in(resource_name, resource)
			yield resource if block_given?
			respond_with resource, location: after_sign_in_path_for(printers_path)
			@user_connexion = UserConnexion.create(user_id: current_user.id,
					 date_connect: @date, hour_connect: @hour, minute_connect: @minute)
		else
			flash[:alert] = "Vous n'avez pas la permission pour vous connecter. Veuillez contacter un Administrateur. "
			# redirect_to root_path
			session.destroy
			redirect_to new_user_session_path
		end
	end


	# DELETE /resource/sign_out
	def destroy
		signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
		set_flash_message :notice, :signed_out if signed_out && is_flashing_format?
		yield if block_given?
		# respond_to_on_destroy		
		session.destroy
		redirect_to new_user_session_path
	end

end


# def create
# 		self.resource = warden.authenticate!(auth_options)
# 		set_flash_message(:notice, :signed_in) if is_flashing_format?
# 		sign_in(resource_name, resource)
# 		yield resource if block_given?
# 		respond_with resource, location: after_sign_in_path_for(resource)
# 	end


# class SessionsController < Devise::SessionsController
#   def create
#     logger.info "Attempt to sign in by #{ params[:user][:email] }"
#     @user = User.find_by_email(params[:user][:email])
#     if @user != nil
#     	puts "#{{@user.first_name}}"
#       if !@user.valide != true
#         flash[:alert] = "#{ @user.email } do not have portal access."
#         redirect_to '/'
#       else
#         super
#       end
#     end
#   end

#   def destroy
#     logger.info "#{ current_user.email } signed out"
#     super
#   end    
# end