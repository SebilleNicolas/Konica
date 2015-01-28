class IncidentsController < ApplicationController
	def index
		@incidents = Incident.all
		@incidents_false = @incidents.where("valide_incidents = ?", false)
		@incidents_true = @incidents.where("valide_incidents = ?", true)
		#@printer = Printer.find(params[:id])
		@titre = "Liste des Incidents"		
	end
	def search
		# @search = Incident.find_by(code_incidents: params[:incident][:code_incidents])
		@param = params[:incident][:code_incidents]
		@search = Incident.where("lower(code_incidents) LIKE lower('%#{@param}%')")
		# puts "********************************************************************"
		# puts "#{@search}"
		# "'%#{params[:first_name]}%'"
		# puts @search.to_yaml
	end
 	def update_valide
    @incident = Incident.find(params[:id])
    @incident.update_attributes(valide_incident_params)

    respond_to do |format|
      format.html { redirect_to incidents_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end
	def home
		@incidents = Incident.all
		@title = "Tous les incidents"
	end
	def new
		@incident = Incident.new
	end
	def create
		@printer = Printer.find(params[:incident][:printer_id])		
			@incident = @printer.incidents.create(incident_params)
		if	params[:incident][:code_incidents].present? 
			if @incident.save
				flash[:notice] = "L'incident a bien été créé."
				# @printer = Printer.find(@incident.printer_id)
				redirect_to printer_path(@printer)+ "#ajouterIncident"
			else
				flash[:alert] = "L'incident n'a pas été créé"
			end
		end
	end
	def update
    @incident = Incident.find(params[:id])
    if @incident.update(incident_update_params)
      flash[:notice] = "Incident modifié a une valeur 'VRAI'"
      redirect_to printers_path	      
    else
    	render 'edit'
    end
	end

	def remove
		@incident = @incident.incidents.build(return_params)
		@printer = Printer.find(params[:id])
	  @codeI = @incident.code_incidents
	 	if @incident.destroy
	 	  flash[:notice] = "L'Incident #{@codeI} a été supprimé."
	  	redirect_to @printer
		end
	end
	
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
	def test
		@incidents = Incident.all
	end

	def showAllIncidents
		@incidents = Incident.all
	end
  def show
    @incident = Incident.find(params[:id])
    @titre = "Incident"
    @printer_inci = PrintersIncident.find_by incident_id: @incident.id
    @printer = Printer.find(@printer_inci.printer_id)
  end
 #  def destroy
	#   @incident = Incident.find(params[:id])
	#   @numI = @incident.code_incidents
	#   @codeI = @incident.code_incidents
	#  	if @incident.destroy
	#  	  flash[:notice] = "L'Incident #{@codeI} a été supprimé."
	#   	redirect_to printers_path
	# 	end
	# end
 	def destroy  	
 		@incident = Incident.find(params[:id])
    @incident.destroy

    respond_to do |format|
      format.html { redirect_to incidents_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
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
