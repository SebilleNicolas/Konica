class ReleveCompteursController < ApplicationController


	def index
		@releves_compteurs = ReleveCompteur.all
		@releve_compteur = ReleveCompteur.new
    # puts '***********************************************'
    # @releves_compteurs =  @printer.releve_compteurs
    @releve_compteurs_true = @releves_compteurs.where("valide_releve_compteurs = ?", true).order(id: :asc)
    @releve_compteurs_false = @releves_compteurs.where("valide_releve_compteurs = ?", false).order(id: :asc)
		@titre = "Liste des Releve Compteur"


	end

  def new
  	@releve_compteur = ReleveCompteur.new
  end
  def create
    @time = Time.now
    @hour = @time.strftime("%H")
    @minute = @time.strftime("%M:%S")
    @date = @time.strftime("%Y-%m-%d")
  	@releve_compteur = ReleveCompteur.create(releve_compteur_params)
  	@printer = Printer.find(params[:releve_compteur][:printer_id])
		if @releve_compteur.save
      @user_add_releve_compteur = UserAddReleveCompteur.create(user_id: current_user.id,
       releve_compteur_id: @releve_compteur.id, date_add: @date, hour_add: @hour, minute_add: @minute)
      @user_add_releve_compteur.save
			flash[:notice] = "Le Relevé Compteur a bien été créé."
		else
			flash[:alert] = "Le Relevé Compteur n'a pas été créé."
		end
		redirect_to @printer
  end

  def show
    @time = Time.now
    @hour = @time.strftime("%H")
    @minute = @time.strftime("%M:%S")
    @date = @time.strftime("%Y-%m-%d")
    @releve_compteur = ReleveCompteur.find(params[:id])
    @printer = Printer.find(@releve_compteur.printer_id)
    @user_show =  UserShowReleveCompteur.create(releve_compteur_id: @releve_compteur.id, user_id: current_user.id,
      date_show: @date, hour_show: @hour, minute_show: @minute) 
    @titre = "Releve compteur"
     @date_rc = UserAddReleveCompteur.find_by releve_compteur_id: params[:id]
     if !@date_rc.blank?
      @user = User.find(@date_rc.user_id)
     end
  end


  def delete
		@releve_compteur = ReleveCompteur.find(params[:id])
    @printer = Printer.find(@releve_compteur.printer_id)
    if @releve_compteur.destroy
    	flash[:notice] = "Le releve_compteur a bien été supprimé."
  	else
  		flash[:alert] = "Le releve_compteur n'a pas été supprimé."
  	end
    redirect_to @printer
  end
  def destroy   
    @releve_compteur = ReleveCompteur.find(params[:id])
    @releve_compteur.destroy

    respond_to do |format|
      format.html { redirect_to releve_compteurs_path }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end
	def update
     @time = Time.now
    @hour = @time.strftime("%H")
    @minute = @time.strftime("%M:%S")
    @date = @time.strftime("%Y-%m-%d")
    @releve_compteur = ReleveCompteur.find(params[:id])
    @printer = Printer.find(@releve_compteur.printer_id)
    if @releve_compteur.update(releve_compteur_params)
      @user_update_releve_compteur = UserUpdateReleveCompteur.create(user_id: current_user.id ,
       releve_compteur_id: @releve_compteur.id,date_update: @date, hour_update: @hour, minute_update: @minute)
      @user_update_releve_compteur.save
      flash[:notice] = "Le relevé compteur a été modifié."
      redirect_to @printer	      
    else
    	render 'edit'
    end
	end
	def valide
    @time = Time.now
    @hour = @time.strftime("%H")
    @minute = @time.strftime("%M:%S")
    @date = @time.strftime("%Y-%m-%d")
    @releve_compteur = ReleveCompteur.find(params[:id])
    @printer = Printer.find(@releve_compteur.printer_id)
    if @releve_compteur.update(valide_releve_compteur_params)
      @admin_valid_releve_compteur = AdminValidReleveCompteur.create(user_id: current_user.id ,
       releve_compteur_id: @releve_compteur.id,date_valid: @date, hour_valid: @hour, minute_valid: @minute)
      @admin_valid_releve_compteur.save
      flash[:notice] = "Le relevé compteur a été validé."
      redirect_to @printer	      
    else
    	render 'edit'
    end
	end
  def update_valide
    @time = Time.now
    @hour = @time.strftime("%H")
    @minute = @time.strftime("%M:%S")
    @date = @time.strftime("%Y-%m-%d")
    @releve_compteur = ReleveCompteur.find(params[:id])
    @releve_compteur.update(:valide_releve_compteurs => 'true')
    @admin_valid_releve_compteur = AdminValidReleveCompteur.create(user_id: current_user.id , 
      releve_compteur_id: @releve_compteur.id, date_valid: @date, hour_valid: @hour, minute_valid: @minute)
    @admin_valid_releve_compteur.save
    respond_to do |format|
      format.html { redirect_to releve_compteurs_path }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end

private 
  def update_valide_releve_compteur_params
    params.require(:releve_compteur).permit( :releve_compteur => [:valide_releve_compteur])
  end
	def valide_releve_compteur_params
		params.require(:releve_compteur).permit( :valide_releve_compteurs)
	end
	def releve_compteur_params
		params.require(:releve_compteur).permit(:description_releve_compteurs, :valide_releve_compteurs, :printer_id)
	end
	def update_description_params
		params.require(:releve_compteur).permit(:description_releve_compteurs, :printer_id)
	end
end
