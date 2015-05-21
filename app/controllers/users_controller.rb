class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@titre= "user"
    @all_user_add_incidents = UserAddIncident.where("user_id = ?", @user.id)
    @all_user_add_consommables = UserAddConsommable.where("user_id = ?", @user.id)
    @all_user_add_releve_compteurs = UserAddReleveCompteur.where("user_id = ?", @user.id)
    @all_user_add_decision_trees = UserAddDecisionTree.where("user_id = ?", @user.id)

    @all_admin_valid_incidents = AdminValidIncident.where("user_id = ?", @user.id)
    @all_admin_valid_consommables = AdminValidConsommable.where("user_id = ?", @user.id)
    @all_admin_valid_releve_compteurs = AdminValidReleveCompteur.where("user_id = ?", @user.id)
    @all_admin_valid_decision_trees = AdminValidDecisionTree.where("user_id = ?", @user.id)


    @all_user_update_incidents = UserUpdateIncident.where("user_id = ?", @user.id)
    @all_user_update_consommables = UserUpdateConsommable.where("user_id = ?", @user.id)
    @all_user_update_releve_compteurs = UserUpdateReleveCompteur.where("user_id = ?", @user.id)
    @all_user_update_decision_trees = UserUpdateDecisionTree.where("user_id = ?", @user.id)








    @count_add_incidents = @all_user_add_incidents.count
    @count_add_consommables = @all_user_add_consommables.count
    @count_add_releve_compteurs = @all_user_add_releve_compteurs.count
    @count_add_decision_trees =@all_user_add_decision_trees.count

    @count_valid_incidents = @all_admin_valid_incidents.count
    @count_valid_consommables = @all_admin_valid_consommables.count
    @count_valid_releve_compteurs = @all_admin_valid_releve_compteurs.count
    @count_valid_decision_trees = @all_admin_valid_decision_trees.count

    @count_update_incidents_consommables = @all_user_update_incidents.count
    @count_update_consommables = @all_user_update_consommables.count
    @count_update_releve_compteurs = @all_user_update_releve_compteurs.count
    @count_update_decision_trees = @all_user_update_decision_trees.count
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
    @dat = UserAddIncident.find_by_sql("select id,DATE(date_add) from user_add_incidents")
    puts 'DATETIME'
    puts @dat.to_yaml
  end
  def add_consommables
    @user = User.find(params[:id])
    # @user_add_incidents = UserAddIncident.find_by_sql("select * from user_add_incidents where user_id = #{@user.id} order by datetime asc LIMIT 10")
    @all_user_add_consommables = UserAddConsommable.all
    @user_add_consommables = @all_user_add_consommables.where("user_id = ?", @user.id).order(date_add: :asc)
    puts @user_add_consommables.to_yaml  
    # @dat = UserAddConsommable.find_by_sql("select id,date_add from user_add_incidents")
    # puts 'DATETIME'
    # puts @dat.to_yaml
  end
  def add_releve_compteurs
    @user = User.find(params[:id])
    # @user_add_incidents = UserAddIncident.find_by_sql("select * from user_add_incidents where user_id = #{@user.id} order by datetime asc LIMIT 10")
    @all_user_add_releve_compteurs = UserAddReleveCompteur.all
    @user_add_releve_compteur = @all_user_add_releve_compteurs.where("user_id = ?", @user.id).order(date_add: :asc)
    puts @user_add_releve_compteur.to_yaml  
    # @dat = UserAddIncident.find_by_sql("select id,date_add from user_add_incidents")
    # puts 'DATETIME'
    # puts @dat.to_yaml
  end
  def add_decision_trees
    @user = User.find(params[:id])
    # @user_add_incidents = UserAddIncident.find_by_sql("select * from user_add_incidents where user_id = #{@user.id} order by datetime asc LIMIT 10")
    @all_user_add_decision_trees = UserAddDecisionTree.all
    @user_add_decision_tree = @all_user_add_decision_trees.where("user_id = ?", @user.id).order(date_add: :asc)
    puts @user_add_deicision_tree.to_yaml  
    # @dat = UserAddIncident.find_by_sql("select id,date_add from user_add_incidents")
    # puts 'DATETIME'
    # puts @dat.to_yaml
  end
  def valid_incidents
    @user = User.find(params[:id])
    @all_admin_valid_incidents = AdminValidIncident.all
    @admin_valid_incidents = @all_admin_valid_incidents.where("user_id = ?", @user.id).order(date_valid: :asc)
  end
  def valid_consommables
    @user = User.find(params[:id])
    @all_admin_valid_consommables = AdminValidConsommable.all
    @admin_valid_consommables = @all_admin_valid_consommables.where("user_id = ?", @user.id).order(date_valid: :asc)
  end
  def valid_releve_compteurs
    @user = User.find(params[:id])
    @all_admin_valid_releve_compteurs = AdminValidReleveCompteur.all
    @admin_valid_releve_compteur = @all_admin_valid_releve_compteurs.where("user_id = ?", @user.id).order(date_valid: :asc)
  end
  def valid_decision_trees
    @user = User.find(params[:id])
    @all_admin_valid_decision_trees = AdminValidDecisionTree.all
    @admin_valid_decision_tree = @all_admin_valid_decision_trees.where("user_id = ?", @user.id).order(date_valid: :asc)
  end
  def update_incidents
    @user = User.find(params[:id])
    # @user_add_incidents = UserAddIncident.find_by_sql("select * from user_add_incidents where user_id = #{@user.id} order by datetime asc LIMIT 10")
    @all_user_update_incidents = UserUpdateIncident.all
    @user_update_incidents = @all_user_update_incidents.where("user_id = ?", @user.id).order(date_update: :asc)
    # puts @user_valid_incidents.to_yaml  
    
  end
  def update_consommables
    @user = User.find(params[:id])
    @all_user_update_consommables = UserUpdateConsommable.all
    @user_update_consommables = @all_user_update_consommables.where("user_id = ?", @user.id).order(date_update: :asc)
  end
  def update_releve_compteurs
    @user = User.find(params[:id])
    @all_user_update_releve_compteurs = UserUpdateReleveCompteur.all
    @user_update_releve_compteur = @all_user_update_releve_compteurs.where("user_id = ?", @user.id).order(date_update: :asc)
  end
  def update_decision_trees
    @user = User.find(params[:id])
    @all_user_update_decision_trees = UserUpdateDecisionTree.all
    @user_update_decision_tree = @all_user_update_decision_trees.where("user_id = ?", @user.id).order(date_update: :asc)
  end
  def update_valide
    @user = User.find(params[:id])
    @user.update_attributes(valide_user_params)
    if @user.valide?
      # message = mail(to: @user.email,
      #    subject: "[Signed up] Welcome #{@user.email}")
      # message.deliver_now
      UserMailer.welcome_email(@user).deliver
    end
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
