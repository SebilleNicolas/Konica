class PrintersController < ApplicationController
	autocomplete :printer, :code_printers, :full => true
	def index
		@printers = Printer.all
		@titre = "Liste des Imprimantes"
		@consommable = Consommable.new
		@consommables = Consommable.all
		@printer = Printer.new
		@incident = Incident.new
		@user = User.find(current_user.id)
	end
	def new	
		@printer = Printer.new
		@printer.attachments.build
		@titre = "Ajouter une Imprimante"
	end

	def search
		@printers=Printer.all
	end


	# Recherche en ajax d'un printer
	def ajax_printer
	  if params[:value].length.to_i >= 2
	  	@value = params[:value].downcase
	    printers = Printer.find_by_sql("select * from printers
	    	where lower(code_printers) like '%#{@value}%'  LIMIT 10")
	    result = printers.collect do |t|
	      {code_printers: t.code_printers,id: t.id}
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


  # Modifier le code_printers d'une imprimante
	def update_code_printers
		@printer = Printer.find(params[:id])	
		if @printer.update_attributes(printer_update_code_printers_params) 
			flash[:notice] = "Le code du système d'impression a bien été modifié."
		else
			flash[:alert] = "Le code du système d'impression n'a pas été modifié."
		end
		redirect_to @printer
	end

  # modifié la description d'une imprimante
	def update_description
		@printer = Printer.find(params[:id])
		
		if @printer.update_attributes(printer_update_description_params) 
			if params[:printer][:nature] == "pj"
				flash[:notice] = "Les pieces jointes du système d'impression ont bien été modifié."
			end
			if params[:printer][:nature] == "description"
				flash[:notice] = "La description du système d'impression a bien été modifié."
			end
		else
			flash[:alert] = "La description du système d'impression n'a pas été modifié."
		end
		redirect_to @printer
	end


  # Créer une omprimante
	def create
			@printer = Printer.new(printer_params)
			@printers=Printer.all
			@bool = false
			@printers.each do |printer|
				if printer.code_printers == @printer.code_printers
					@bool = true
				end
			end
			if @bool != true
				if @printer.save
					flash[:notice] = "Le système d'impression a bien été créé."
					redirect_to @printer
				else
					flash[:alert] = "Le système d'impression n'a pas été créé"
					redirect_to @printer
				end
			else
				flash[:alert] = "Le système d'impression #{@printer.code_printers} existe déjà."
				redirect_to new_printer_path
			end
	end

	def edit
		@printer = Printer.find(params[:id])
	end

	def show
		@time = Time.now
		@hour = @time.strftime("%H")
		@minute = @time.strftime("%M:%S")
		@date = @time.strftime("%Y-%m-%d")
		@printer = Printer.find(params[:id])
	  @titre = "Système Impression"
	  @attachments = @printer.attachments
	 	@attachment = Attachment.new
    @incident = Incident.new
    @incidents =@printer.incidents
    @NbIncident = @printer.incidents.where("valide_incidents = ?", true).count
    @incidents_true = @incidents.where("valide_incidents = ?", true)
		@incidents_false = @printer.incidents.where("valide_incidents = ?", false)
    @consommable = Consommable.new
    @all_consommables = Consommable.all
    @consommables = @printer.consommables
    @consommables_true = @consommables.where("valide_consommables = ?", true)
		@consommables_false = @consommables.where("valide_consommables = ?", false)

		@consommables_search = Consommable.find_by_sql("select * from consommables where id 
 in ( select  consommable_id from printers_consommables where printer_id != #{@printer.id}
  and consommable_id NOT IN 
  (select distinct consommable_id from printers_consommables where printer_id = #{@printer.id} ))
		AND valide_consommables = true order by code_consommables ASC")
		@consommables_hide_in_printers_consommables= Consommable.find_by_sql("
			select * from consommables 
			where id not in (select consommable_id from printers_consommables)")
		 @user_show =  UserShowPrinter.create(printer_id: @printer.id, user_id: current_user.id,
	   	date_show: @date, hour_show: @hour, minute_show: @minute) 
    @Nbconsommable = @printer.consommables.where("valide_consommables = ?", true).count
  	@printers_consommable = PrintersConsommable.new
		@printers_consommables = PrintersConsommable.all
    @releve_compteur = ReleveCompteur.new
    @releves_compteurs =  @printer.releve_compteurs
    @releves_compteurs_true = @releves_compteurs.where("valide_releve_compteurs = ?", true)
		@releves_compteurs_false = @releves_compteurs.where("valide_releve_compteurs = ?", false)
		@replacements = Replacement.all
	end		

  # Suppression d'une imprimante (en ajax)
	def destroy
 		@printer = Printer.find(params[:id])
	    @printer.destroy
	    respond_to do |format|
	      format.html { redirect_to printers_url }
	      format.json { head :no_content }
	      format.js   { render :layout => false }
	    end
	end

  # Supprimer la dépendance d'une imprimante
	def delete_printers_consommables
		@consommable = Consommable.find(params[:id])
		@printer_conso = PrintersConsommable.find_by consommable_id: @consommable.id
		@printer_conso.destroy
	    render nothing: true
	end

  
private
	def printer_update_code_printers_params
		params.require(:printer).permit(:code_printers)
	end
	def printer_update_description_params
		params.require(:printer).permit(:description_printers, attachments_attributes: [:file,:id])
	end
	def return_params
	  params.require(:printer).permit(:incident_ids => [])
	end

	def printer_params
		params.require(:printer).permit(:code_printers, :description_printers, attachments_attributes: [:file])
	end
end
