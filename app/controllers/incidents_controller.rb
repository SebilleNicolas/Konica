class IncidentsController < ApplicationController
	# autocomplete :incident, :code_incidents, :full => true
	def index
		@incidents = Incident.all
		@incidents_false = @incidents.where("valide_incidents = ?", false).order(code_incidents: :asc)
		@incidents_true = @incidents.where("valide_incidents = ?", true).order(code_incidents: :asc)
		@titre = "Liste des Incidents"		
	end

	# Methode de recherche après validation dans printer/index #searchIncident
	def search
		@param = params[:incident][:code_incidents]
		@search = Incident.where("lower(code_incidents) LIKE lower('%#{@param}%') 
			AND valide_incidents = true")
	end

	# Valider un incident
 	def update_valide
 		@time = Time.now
		@hour = @time.strftime("%H")
		@minute = @time.strftime("%M:%S")
		@date = @time.strftime("%Y-%m-%d")

		# On récupère l'incident passez en paramètre, et on récupère le printer
    @incident = Incident.find(params[:id])
    @printer_inci = PrintersIncident.find_by(incident_id: params[:id])
    @printer = Printer.find(@printer_inci.printer_id)

    if @incident.update_attributes(:valide_incidents => true)
  		# On fait la tracabilité
    	@admin_valid_incident = AdminValidIncident.create(user_id: current_user.id ,
    	 incident_id: @incident.id,date_valid: @date, hour_valid: @hour, minute_valid: @minute)
    	@admin_valid_incident.save

    	flash[:notice] = "L'incident a bien été validé."
			redirect_to printer_path(@printer)+ "#incidentTrue"
		else
			flash[:alert] = "L'incident n'a pas été validé."
		end
  end


	def home
		@incidents = Incident.all
		@title = "Tous les incidents"
	end


	def new
		@incident = Incident.new
	end

	# Créer un incident
	def create
		@time = Time.now
		@hour = @time.strftime("%H")
		@minute = @time.strftime("%M:%S")
		@date = @time.strftime("%Y-%m-%d")

		@printer = Printer.find(params[:incident][:printer_id])		
		@incident = @printer.incidents.create(incident_params)
		if params[:incident][:code_incidents].present? 
			if @incident.save
				@user_add_incident = UserAddIncident.create(user_id: current_user.id, incident_id: @incident.id,date_add: @date, hour_add: @hour, minute_add: @minute)
				@user_add_incident.save
				flash[:notice] = "L'incident a bien été créé."
				redirect_to printer_path(@printer)+ "#ajouterIncident"
			else
				flash[:alert] = "L'incident n'a pas été créé"
			end
		end
	end

  # Modifier les propriétés de l'incident
	def update
		@time = Time.now
		@hour = @time.strftime("%H")
		@minute = @time.strftime("%M:%S")
		@date = @time.strftime("%Y-%m-%d")

    @incident = Incident.find(params[:id])
    @printer_inci = PrintersIncident.find_by(incident_id: params[:id])
    @printer = Printer.find(@printer_inci.printer_id)
    if @incident.update_attributes(incident_params)

      # tracabilité de la modification
    	@user_update_incident = UserUpdateIncident.create(user_id: current_user.id ,
    	 incident_id: @incident.id,date_update: @date, hour_update: @hour, minute_update: @minute)
      @user_update_incident.save

      flash[:notice] = "Incident modifié."
      redirect_to @incident	      
    else
    	render 'edit'
    end
	end


  # Supprimer un incident	
  def delete
		@incident = Incident.find(params[:id])
		@printer_inci = PrintersIncident.find_by incident_id: @incident.id
    @printer = Printer.find(@printer_inci.printer_id)
    if @incident.destroy
    	flash[:notice] = "L'incident a bien été supprimé."
  	else
  		flash[:alert] = "L'incident n'a pas été supprimé."
  	end
    redirect_to @printer
  end


  # Voir les détails pour 1'incident
  def show
		@time = Time.now
		@hour = @time.strftime("%H")
		@minute = @time.strftime("%M:%S")
		@date = @time.strftime("%Y-%m-%d")

    @incident = Incident.find(params[:id])
    @titre = "Incident"
    @printer_inci = PrintersIncident.find_by incident_id: @incident.id
    @printer = Printer.find(@printer_inci.printer_id)

    # tracabilité de l'utilisateur
    @user_show =  UserShowIncident.create(incident_id: @incident.id, user_id: current_user.id,
	   	date_show: @date, hour_show: @hour, minute_show: @minute) 
    @date_inci = UserAddIncident.find_by incident_id: params[:id]
	   if !@date_inci.blank?
	   	@user = User.find(@date_inci.user_id)
	   end
  end

  # Supprimer un incident (en ajax)
 	def destroy  	
 		@incident = Incident.find(params[:id])
    @incident.destroy

    respond_to do |format|
      format.html { redirect_to incidents_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
	end


  # Recherche d'un incident en ajax
	def ajax_incident
	  if params[:value].length.to_i >= 2
	  	@value = params[:value].downcase
	    incidents = Incident.find_by_sql("select * from incidents
    	where lower(code_incidents) like '%#{@value}%'  LIMIT 10")

	    result = incidents.collect do |t|
	      {code_incidents: t.code_incidents,id: t.id}
	    end
	    if result.count > 0
		  	respond_to do |format|
		        format.json { render :json => result.to_json }
		    end
	    else
	    	benoit = {:status => true}
  	 		respond_to do |format|
        	format.json { render :json => benoit.to_json }
      	end
	    end
    else
  		benoit = {:status => true}
  	 	respond_to do |format|
        format.json { render :json => benoit.to_json }
      end
  	end
	end
  

private
def valide_incident_params
	params.require(:incident).permit(:valide_incidents)
end
	def return_params
    params.require(:incident).permit(:incident_ids => [])
  end
	
  def incident_update_params
  	params.require(:incident).permit(:valide_incidents)
  end
	def incident_params
		params.require(:incident).permit(:code_incidents, :intitule_incidents, 
			:description_incidents, :solution_incidents, :valide_incidents  )
	end

end


#params.require(:employee).permit( :nomEmployees, :prenomEmployees ,  :manager_id => @manager.id)
