class ReleveCompteursController < ApplicationController


	def index
		@releves_compteurs = ReleveCompteur.all
		@releve_compteur = ReleveCompteur.new
    # puts '***********************************************'
    # @releves_compteurs =  @printer.releve_compteurs
    @releve_compteurs_true = @releves_compteurs.where("valide_releve_compteurs = ?", true)
    @releve_compteurs_false = @releves_compteurs.where("valide_releve_compteurs = ?", false)
		@titre = "Liste des Releve Compteur"
	end

  def new
  	@releve_compteur = ReleveCompteur.new
  end
  def create
  	@releve_compteur = ReleveCompteur.create(releve_compteur_params)
  	@printer = Printer.find(params[:releve_compteur][:printer_id])
		if @releve_compteur.save
      @user_add_releve_compteur = UserAddReleveCompteur.create(user_id: current_user.id, releve_compteur_id: @releve_compteur.id, datetime: Time.now.in_time_zone.in_time_zone)
      @user_add_releve_compteur.save
			flash[:notice] = "Le Relevé Compteur a bien été créé."
		else
			flash[:alert] = "Le Relevé Compteur n'a pas été créé."
		end
		redirect_to @printer
  end

  def show
    @releve_compteur = ReleveCompteur.find(params[:id])
    @titre = "releve compteur"
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
    @releve_compteur = ReleveCompteur.find(params[:id])
    @printer = Printer.find(@releve_compteur.printer_id)
    if @releve_compteur.update(releve_compteur_params)
      @user_update_releve_compteur = UserUpdateReleveCompteur.create(user_id: current_user.id , releve_compteur_id: @releve_compteur.id, datetime: Time.now.in_time_zone.in_time_zone)
      @user_update_releve_compteur.save
      flash[:notice] = "Le relevé compteur a été modifié."
      redirect_to @printer	      
    else
    	render 'edit'
    end
	end
	def valide
    @releve_compteur = ReleveCompteur.find(params[:id])
    @printer = Printer.find(@releve_compteur.printer_id)
    if @releve_compteur.update(valide_releve_compteur_params)
      @admin_valid_releve_compteur = AdminValidReleveCompteur.create(user_id: current_user.id , releve_compteur_id: @releve_compteur.id, datetime: Time.now.in_time_zone.in_time_zone)
      @admin_valid_releve_compteur.save
      flash[:notice] = "Le relevé compteur a été validé."
      redirect_to @printer	      
    else
    	render 'edit'
    end
	end
  def update_valide
    @releve_compteur = ReleveCompteur.find(params[:id])
    @releve_compteur.update(:valide_releve_compteurs => 'true')
    @admin_valid_releve_compteur = AdminValidReleveCompteur.create(user_id: current_user.id , releve_compteur_id: @releve_compteur.id, datetime: Time.now.in_time_zone.in_time_zone)
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
