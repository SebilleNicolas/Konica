class PrintersController < ApplicationController
	autocomplete :printer, :code_printers, :full => true
	def index
		@printers = Printer.all
		@titre = "Liste des Imprimantes"
		@consommable = Consommable.new
		@consommables = Consommable.all
		@printer = Printer.new
		@incident = Incident.new
		# @printers.to_json

	end
	def new	
		@printer = Printer.new
		@printer.attachments.build
		# @attachment = Attachment.new
		@titre = "Ajouter une Imprimante"
		@date = Time.now.in_time_zone
		@zone = Time.zone
		puts @date
		puts @zone
	end
	def search
		@printers=Printer.all
		# @search = Incident.find_by(code_incidents: params[:incident][:code_incidents])
		# @param = params[:printer][:id]
		# @search = Printer.where("lower(code_printers) LIKE lower('%#{@param}%')")
		# @search = Printer.where("ddddd")
		# puts "********************************************************************"
		# puts "#{@search}"
		# puts @search.count
		# "'%#{params[:first_name]}%'"
		# puts @search.to_yaml
	end






	def ajax_printer
	  # @@value = params[:value]
	  if params[:value].length.to_i >= 2
	  	@value = params[:value].downcase
	    # printers = Printer.select([:code_printers],[:id]).where("lower(code_printers) LIKE ?", "%#{params[:value].downcase}%")
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

   
	  #   end
	  #   if result.any?
	  #     result = {:status => true}
	  #     respond_to do |format|
	  #       format.json { render :json => result.to_json }
	  #     end
	  #   else
	  #     result = {:status => false}
	  #     respond_to do |format|
	  #       format.json { render :json => result.to_json }
	  #     end
	  #   end
	  # else
	  #   result = {:status => nil}
	  #   respond_to do |format|
	  #     format.json { render :json => result.to_json }
	  #   end
	  # end
	end







	def update_code_printers
		@printer = Printer.find(params[:id])	
		if @printer.update_attributes(printer_update_code_printers_params) 
			flash[:notice] = "Le code du système d'impression a bien été modifié."
		else
			flash[:alert] = "Le code du système d'impression n'a pas été modifié."
		end
		redirect_to @printer
	end

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
		@printer = Printer.find(params[:id])
	  @titre = "Système Impression"

	  @attachments = @printer.attachments
	 	@attachment = Attachment.new
	 	# puts @attachments.to_yaml
    @incident = Incident.new
    @incidents =@printer.incidents
    @NbIncident = @printer.incidents.where("valide_incidents = ?", true).count
    @incidents_true = @incidents.where("valide_incidents = ?", true)
		# puts "**************************************************************************"
		# puts "**************************************************************************"
		# puts "**************************************************************************"
		@incidents_false = @printer.incidents.where("valide_incidents = ?", false)
		# puts @incidents_false.to_yaml
		# puts "**************************************************************************"
		# puts "**************************************************************************"
		# puts "**************************************************************************"
    # @incidents_true = 
    #@consommables = @printer.consommables
    
    @consommable = Consommable.new
    @all_consommables = Consommable.all
    @consommables = @printer.consommables
    @consommables_true = @consommables.where("valide_consommables = ?", true)
		@consommables_false = @consommables.where("valide_consommables = ?", false)


		@consommables_search = Consommable.find_by_sql("select * from consommables where id 
 in ( select  consommable_id from printers_consommables where printer_id != #{@printer.id}
  and consommable_id NOT IN 
  (select distinct consommable_id from printers_consommables where printer_id = #{@printer.id} ))
		AND valide_consommables = true")
		@consommables_hide_in_printers_consommables= Consommable.find_by_sql("
			select * from consommables 
			where id not in (select consommable_id from printers_consommables)")

		# @consommables_vide_search = Consommable.find_by_sql("
		# 	select * from consommables where id 
		# in ( select distinct consommable_id from printers_consommables where printer_id != #{@printer.id}) 
		# AND valide_consommables = true")
    
		
    @Nbconsommable = @printer.consommables.where("valide_consommables = ?", true).count

  	
  	@printers_consommable = PrintersConsommable.new
		@printers_consommables = PrintersConsommable.all

    @releve_compteur = ReleveCompteur.new
   	# puts '***********************************************'
    @releves_compteurs =  @printer.releve_compteurs
    @releves_compteurs_true = @releves_compteurs.where("valide_releve_compteurs = ?", true)
		@releves_compteurs_false = @releves_compteurs.where("valide_releve_compteurs = ?", false)


		@replacements = Replacement.all
		# puts '******************************************************************'
		# puts @replacements.to_yaml
		# puts '******************************************************************'
	end		
	def destroy
 		@printer = Printer.find(params[:id])
	    @printer.destroy
	    respond_to do |format|
	      format.html { redirect_to printers_url }
	      format.json { head :no_content }
	      format.js   { render :layout => false }
	    end
	end

	def delete_printers_consommables
		@consommable = Consommable.find(params[:id])
		@printer_conso = PrintersConsommable.find_by consommable_id: @consommable.id
		@printer_conso.destroy
		# puts '*********************************************************'
		# puts '*********************************************************'
		# puts @consommable.to_yaml
		# puts '*********************************************************'
		# puts '*********************************************************'
		# @printer_id = PrintersConsommable.find_by(consommable_id: params[:id])
		# @printer = Printer.find_by(id: @printer_id.printer_id)
	    # if @consommable.update(:valide_consommables => 'true')
	    #   redirect_to @printer
	    #   flash[:notice] = "Le Consommable a été validé "
	    # else
	    #   render 'edit'
	    # end
	    # @consommable.update_attributes(:valide_consommables => true)

	    render nothing: true
	end
 #  def destroy
 #  	@printer = Printer.find(params[:id])
 #  	@printer = @printer.incidents.build(return_params)
	  
	#   @codeI = @incident.code_incidents
	#  	if @incident.destroy
	#  		respond_to do |format|
	#       format.html { redirect_to @printer }
	#       format.json { head :no_content }
	#       format.js   { render :layout => false }
 #   		end
	# 	end
		
	# end
	# def download
 #    # Récup le chemin du fichier à partir de l'id

 # 	# IMAGES_PATH = File.join(Rails.root, "public", "uploads","attachment","file","79")
 #    # Envoi du fichier au client

 #    send_file(Rails.root.join("public", "uploads","attachment","file","79","fiche-c224-c284-c364.pdf"))
 #    # send_file(@filename, :filename => "fiche-c224-c284-c364.pdf")
 #    # send_file("uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}", :disposition => "inline")
 #  end
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
