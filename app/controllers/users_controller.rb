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

    @all_user_show_incidents = UserShowIncident.where("user_id = ?", @user.id)
    @all_user_show_consommables = UserShowConsommable.where("user_id = ?", @user.id)
    @all_user_show_releve_compteurs = UserShowReleveCompteur.where("user_id = ?", @user.id)
    @all_user_show_decision_trees = UserShowDecisionTree.where("user_id = ?", @user.id)
    @all_user_show_printers = UserShowPrinter.where("user_id = ?", @user.id)



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

    @count_show_incidents = @all_user_show_incidents.count
    @count_show_consommables = @all_user_show_consommables.count
    @count_show_releve_compteurs = @all_user_show_releve_compteurs.count
    @count_show_decision_trees =@all_user_show_decision_trees.count
    @count_show_printers = @all_user_show_printers.count

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

# if date1.to_time.to_i < Date.today.to_time.to_i && Date.today.to_time.to_i > date2.to_time.to_i
#   puts Date.today
# end


  def return_date_string(string)
    if string == 'Janvier'
      string = '01'
    end
    
    if string == 'Février'
      string  = '02'
    end
     
    if string == 'Mars'
      string = '03'
    end

    if string == 'Avril'
      string = '04'
    end

    if string == 'Mai'
      string = '05'
    end

    if string == 'Juin'
      string = '06'
    end

    if string == 'Juillet'
      string = '07'
    end

    if string == 'Août'
      string = '08'
    end

    if string == 'Septembre'
      string = '09'
    end

    if string == 'Octobre'
      string = '10'
    end

    if string == 'Novembre'
      string = '11'
    end

    if string == 'Décembre'
      string = '12'
    end

     return string
  end
   def ajax_search_user
    @user_id = params[:user_id]
    @user = User.find(@user_id)

     respond_to do |format|
      format.json { render :json => {:user => @user }}
      format.html { redirect_to printers_path}
      # format.json { render :json =>  @question_avant.to_json }
    end
   end
   def ajax_search_object
    @object_id = params[:object_id]
    @object_nature = params[:object_nature]
    if @object_nature  == "incident"
      @object = Incident.find(@object_id)
    end
    if @object_nature  == "consommable"
      @object = Consommable.find(@object_id)
    end
    if @object_nature  == "decision_tree"
      @object = DecisionTree.find(@object_id)
    end
    if @object_nature  == "releve_compteur"
      @object = ReleveCompteur.find(@object_id)
    end
    puts @object.inspect
    
    respond_to do |format|
      format.json { render :json => {:object => @object }}
      format.html { redirect_to printers_path}
      # format.json { render :json =>  @question_avant.to_json }
    end
   end
   def ajax_search_date
    @date_deb = params[:date_deb]
    @date_fin = params[:date_fin]

    @action = params[:action_obj]
    @object = params[:object_obj]
    @table = @action.to_s + @object.to_s
    @my_obj = @object
    # puts @action.to_yaml

    if @action == 'user_add_'
      @date_db = 'date_add' 
    end
    if @action == 'user_update_'
      @date_db = 'date_update' 
    end
    if @action == 'user_show_'
      @date_db = 'date_show' 
    end
    if @action == 'admin_valid_'
      @date_db = 'date_valid' 
    end
    # DATE DEBUT 
    @date_deb_tab=@date_deb.split
    @date_deb_tab[1] = return_date_string(@date_deb_tab[1])
    @date_debut = Date.new(@date_deb_tab[2].to_i,@date_deb_tab[1].to_i,@date_deb_tab[0].to_i)

    # DATE FIN
    @date_fin_tab=@date_fin.split
    @date_fin_tab[1] = return_date_string(@date_fin_tab[1])
    @date_de_fin = Date.new(@date_fin_tab[2].to_i,@date_fin_tab[1].to_i,@date_fin_tab[0].to_i)

    if @my_obj.to_s == 'incidents'
      if @action == 'user_add_'
        @object = UserAddIncident.find_by_sql('Select * from '+@table+' where date_add BETWEEN \''+@date_debut.to_s+'\' and \''+@date_de_fin.to_s+'\'')
        # @object = @object + User.find(@object.user_id)
        puts '*************************************'
        puts '*************************************'
        puts @object.inspect
        puts '*************************************'
        puts '*************************************'
      end
      if @action == 'user_update_'
        @object = UserUpdateIncident.find_by_sql('Select * from '+@table+' where date_update BETWEEN \''+@date_debut.to_s+'\' and \''+@date_de_fin.to_s+'\'')
      end
      if @action == 'user_show_'
        @object = UserShowIncident.find_by_sql('Select * from '+@table+' where date_show BETWEEN \''+@date_debut.to_s+'\' and \''+@date_de_fin.to_s+'\'')
      end
      if @action == 'admin_valid_'
        @object = AdminValidIncident.find_by_sql('Select * from '+@table+' where date_valid BETWEEN \''+@date_debut.to_s+'\' and \''+@date_de_fin.to_s+'\'')
      end
    end

    if @my_obj.to_s == 'consommables'
      if @action == 'user_add_'
        @object = UserAddConsommable.find_by_sql('Select * from '+@table+' where date_add BETWEEN \''+@date_debut.to_s+'\' and \''+@date_de_fin.to_s+'\'')
      end
      if @action == 'user_update_'
        @object = UserUpdateConsommable.find_by_sql('Select * from '+@table+' where date_update BETWEEN \''+@date_debut.to_s+'\' and \''+@date_de_fin.to_s+'\'')
      end
      if @action == 'user_show_'
        @object = UserShowConsommable.find_by_sql('Select * from '+@table+' where date_show BETWEEN \''+@date_debut.to_s+'\' and \''+@date_de_fin.to_s+'\'')
      end
      if @action == 'admin_valid_'
        @object = AdminValidConsommable.find_by_sql('Select * from '+@table+' where date_valid BETWEEN \''+@date_debut.to_s+'\' and \''+@date_de_fin.to_s+'\'')
      end
    end

    if @my_obj.to_s == 'decision_trees'
      if @action == 'user_add_'
        @object = UserAddDecisionTree.find_by_sql('Select * from '+@table+' where date_add BETWEEN \''+@date_debut.to_s+'\' and \''+@date_de_fin.to_s+'\'')
      end
      if @action == 'user_update_'
        @object = UserUpdateDecisionTree.find_by_sql('Select * from '+@table+' where date_update BETWEEN \''+@date_debut.to_s+'\' and \''+@date_de_fin.to_s+'\'')
      end
      if @action == 'user_show_'
        @object = UserShowDecisionTree.find_by_sql('Select * from '+@table+' where date_show BETWEEN \''+@date_debut.to_s+'\' and \''+@date_de_fin.to_s+'\'')
      end
      if @action == 'admin_valid_'
        @object = AdminValidDecisionTree.find_by_sql('Select * from '+@table+' where date_valid BETWEEN \''+@date_debut.to_s+'\' and \''+@date_de_fin.to_s+'\'')
      end
    end

    if @my_obj.to_s == 'releve_compteurs'
      if @action == 'user_add_'
        @object = UserAddReleveCompteur.find_by_sql('Select * from '+@table+' where date_add BETWEEN \''+@date_debut.to_s+'\' and \''+@date_de_fin.to_s+'\'')
       
      end
      if @action == 'user_update_'
        @object = UserUpdateReleveCompteur.find_by_sql('Select * from '+@table+' where date_update BETWEEN \''+@date_debut.to_s+'\' and \''+@date_de_fin.to_s+'\'')
      end
      if @action == 'user_show_'
        @object = UserShowReleveCompteur.find_by_sql('Select * from '+@table+' where date_show BETWEEN \''+@date_debut.to_s+'\' and \''+@date_de_fin.to_s+'\'')
      end
      if @action == 'admin_valid_'
        @object = AdminValidReleveCompteur.find_by_sql('Select * from '+@table+' where date_valid BETWEEN \''+@date_debut.to_s+'\' and \''+@date_de_fin.to_s+'\'')
      end
    end

    puts "*************************************************************"
      puts @object.inspect
    puts "*************************************************************"
    

    
    respond_to do |format|
      format.json { render :json => {:object_list => @object }}
      format.html { redirect_to printers_path}
      # format.json { render :json =>  @question_avant.to_json }
    end

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
