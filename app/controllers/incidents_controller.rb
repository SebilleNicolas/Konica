class IncidentsController < ApplicationController
	# autocomplete :incident, :code_incidents, :full => true
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
		@search = Incident.where("lower(code_incidents) LIKE lower('%#{@param}%') 
			AND valide_incidents = true")
    

		# putsrch.id = incident_id "#{@search}"
		# "'%#{params[:first_name]}%'"
		# puts @search.to_yaml
	end
 	def update_valide
    @incident = Incident.find(params[:id])
    
    @printer_inci = PrintersIncident.find_by(incident_id: params[:id])
    @printer = Printer.find(@printer_inci.printer_id)

    if @incident.update_attributes(:valide_incidents => true)
    	@admin_valid_incident = AdminValidIncident.create(user_id: current_user.id , incident_id: @incident.id, datetime: Time.now.in_time_zone )
    	@admin_valid_incident.save
    	flash[:notice] = "L'incident a bien été validé."
			redirect_to printer_path(@printer)+ "#incidentTrue"
		else
			flash[:alert] = "L'incident n'a pas été validé."
		end
    # respond_to do |format|
    #   format.html { redirect_to incidents_url }
    #   format.json { head :no_content }
    #   format.js   { render :layout => false }
    # end
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
				@user_add_incident = UserAddIncident.create(user_id: current_user.id, datetimestring: Time.now.in_time_zone, incident_id: @incident.id, date_add: Time.now.in_time_zone)
				@user_add_incident.save
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
    @printer_inci = PrintersIncident.find_by(incident_id: params[:id])
    @printer = Printer.find(@printer_inci.printer_id)
    # puts "*******************************************************************"
    #  puts "*******************************************************************"
    #  @incident.to_yaml
    #   puts "*******************************************************************"
    #    puts "*******************************************************************"
    if @incident.update_attributes(incident_params)
    	@user_update_incident = UserUpdateIncident.create(user_id: current_user.id , incident_id: @incident.id, datetime: Time.now.in_time_zone)
      @user_update_incident.save
      flash[:notice] = "Incident modifié."
      redirect_to @incident	      
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


	def ajax_incident
	  # @@value = params[:value]
	  if params[:value].length.to_i >= 2
	  	@value = params[:value].downcase
	    # printers = Printer.select([:code_printers],[:id]).where("lower(code_printers) LIKE ?", "%#{params[:value].downcase}%")
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
	def ajax_printer_incidents
	  # @@value = params[:value]
  	@value = params[:value].downcase
    # printers = Printer.select([:code_printers],[:id]).where("lower(code_printers) LIKE ?", "%#{params[:value].downcase}%")
    printers_incident = PrintersIncident.find_by_sql("select * from printers_incidents
    where incident_id in (select id from incidents where lower(code_incidents) like '%#{@value}%')  LIMIT 10")
    result = printers.collect do |t|
      {id: t.id}
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
  # else
		# benoit = {:status => true}
	 # 	respond_to do |format|
  #     format.json { render :json => benoit.to_json }
  #   end
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
