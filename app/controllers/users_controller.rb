class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@titre= "user"
  end

  def manage  
    @users = User.all
    @users_non_valide = @users.where("valide = ?", false)
    @users_valide = @users.where("valide = ?", true).order(last_name: :asc)
    @titre = "Gérer Utilisateur"
  end
  def add_incidents
    @user = User.find(params[:id])
    # @user_add_incidents = UserAddIncident.find_by_sql("select * from user_add_incidents where user_id = #{@user.id} order by datetime asc LIMIT 10")
    @all_user_add_incidents = UserAddIncident.all
    @user_add_incidents = @all_user_add_incidents.where("user_id = ?", @user.id).order(date_add: :asc)
    puts @user_add_incidents.to_yaml  
    @dat = UserAddIncident.find_by_sql("select id,date_add from user_add_incidents")
    puts 'DATETIME'
    puts @dat.to_yaml
  end

  def update_valide
    @user = User.find(params[:id])
    @user.update_attributes(valide_user_params)

    respond_to do |format|
      format.html { redirect_to manage_users_path }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end
  def update_role
    @user = User.find(params[:id])
    @user.update_attributes(role_user_params)

    respond_to do |format|
      format.html { redirect_to manage_users_path }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end
  def destroy
    @user = User.find(params[:id])
      if @user.destroy
        flash[:notice] = "L'utilisateur a bien été supprimé."
      else
        flash[:alert] = "L'utilisateur n'a pas été supprimé."
      end
      redirect_to manage_users_path
  end
  def update
    @user = User.find(params[:id])
		@titre = "Modification"
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
     
  end
  def new 
    @user = User.new
    @titre = "Inscription"
  end
  def edit
    @titre = "Modification"
  end
  private

  # check if we need password to update user data
  # ie if password or email was changed
  # extend this as needed
  def needs_password?(user, params)
      params[:user][:password].present? ||
      params[:user][:password_confirmation].present?
  end
  def role_user_params
    params.require(:user).permit(:role)
  end
  def valide_user_params
    params.require(:user).permit(:valide)
  end
  
end
