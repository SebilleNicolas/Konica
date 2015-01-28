class PrintersController < ApplicationController
	autocomplete :printer, :code_printers, :full => true
	def index
		@printers = Printer.all
		@titre = "Liste des Imprimantes"
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
	end
	def search

		# @search = Incident.find_by(code_incidents: params[:incident][:code_incidents])
		@param = params[:printer][:id]
		@search = Printer.where("lower(code_printers) LIKE lower('%#{@param}%')")
		# @search = Printer.where("ddddd")
		# puts "********************************************************************"
		# puts "#{@search}"
		# puts @search.count
		# "'%#{params[:first_name]}%'"
		# puts @search.to_yaml
	end
	
	def update_code_printers
		@printer = Printer.find(params[:id])	
		if @printer.update_attributes(printer_update_code_printers_params) 
			flash[:notice] = "Le code de l'imprimante a bien été modifié."
		else
			flash[:alert] = "Le code de l'imprimante n'a pas été modifié."
		end
		redirect_to @printer
	end

	def update_description
		@printer = Printer.find(params[:id])
		if @printer.update_attributes(printer_update_description_params) 
			flash[:notice] = "La description de l'imprimante a bien été modifié."
		else
			flash[:alert] = "La description de l'imprimante n'a pas été modifié."
		end
		redirect_to @printer
	end

	def create
			@printer = Printer.new(printer_params)
			@printer.save
			if @printer.save
				flash[:notice] = "L'Imprimante a bien été créé."
				redirect_to @printer
			else
				flash[:alert] = "L'Imprimante n'a pas été créé"
				redirect_to @printer
			end
	end

	def edit
		@printer = Printer.find(params[:id])
	end


	def show
		@printer = Printer.find(params[:id])
	  @titre = "Imprimante"

	  @attachments = @printer.attachments
	 	@attachment = Attachment.new
	 	# puts @attachments.to_yaml
    @incident = Incident.new
    @incidents =@printer.incidents
    @NbIncident = @printer.incidents.count
    @incidents_true = @incidents.where("valide_incidents = ?", true)

		@incidents_false = @incidents.where("valide_incidents = ?", false)
    # @incidents_true = 
    #@consommables = @printer.consommables
    
    @consommable = Consommable.new
    @all_consommables = Consommable.all
    @consommables = @printer.consommables
    @consommables_true = @consommables.where("valide_consommables = ?", true)
		@consommables_false = @consommables.where("valide_consommables = ?", false)

puts '****************************************************************************'
puts '****************************************************************************'

		@consommables_search = Consommable.find_by_sql("select * from consommables where id 
 in ( select  consommable_id from printers_consommables where printer_id != #{@printer.id}
  and consommable_id NOT IN 
  (select distinct consommable_id from printers_consommables where printer_id = #{@printer.id} ))
		AND valide_consommables = true")
puts '****************************************************************************'
puts '****************************************************************************'

		# @consommables_vide_search = Consommable.find_by_sql("
		# 	select * from consommables where id 
		# in ( select distinct consommable_id from printers_consommables where printer_id != #{@printer.id}) 
		# AND valide_consommables = true")
    

    @Nbconsommable = @printer.consommables.count

  	
  	@printers_consommable = PrintersConsommable.new
		@printers_consommables = PrintersConsommable.all

    @releve_compteur = ReleveCompteur.new
   	
    @releves_compteurs = ReleveCompteur.all
    @releves_compteurs_true = @releves_compteurs.where("valide_releve_compteurs = ?", true)
		@releves_compteurs_false = @releves_compteurs.where("valide_releve_compteurs = ?", false)
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
