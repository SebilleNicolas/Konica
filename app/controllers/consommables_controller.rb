class ConsommablesController < ApplicationController
	def index
		@consommables = Consommable.all
		@consommables_false = @consommables.where("valide_consommables = ?", false)
		@consommables_true = @consommables.where("valide_consommables = ?", true)
		#@printer = Printer.find(params[:id])
		@titre = "Liste des conso"
		
	end
	def home
			@consommables = Consommable.all
	end
	def new
		@consommable = Consommable.new
	end
	
	def create
		# puts params[:consommable][:printer_id]
		@printer = Printer.find(params[:consommable][:printer_id])
		@consommable = @printer.consommables.create(consommable_params)
		@consommable.save
		respond_to do |format|
			if @consommable.save
				# set_flash_message :notice, :toto
				# @printer_conso = Printer_conso.new(printer_consos_params)
				flash[:notice] = "Le consommable a bien été créé."
				# @printer = Printer.find(@consommable.printer_id)
				format.html {redirect_to printer_path(@printer)+ "#ajouterConsommable"}
			else
				flash[:alert] = "Le consommable n'a pas été créé"
				format.html {redirect_to @printer}
			end
		end
	end

	def add_consommables_printer
		# puts params[:consommable][:printer_id]
		@printer = Printer.find(params[:consommable][:printer_id])
		@consommable = @printer.consommables.create(add_consommables_printer_params)
		
	end
	def show
	    @consommable = Consommable.find(params[:id])
	    @printer_conso = PrintersConsommable.find_by consommable_id: @consommable.id
	    @printer = Printer.find(@printer_conso.printer_id)
	    @titre = "CONSO"
	end

  	def delete
		@consommable = Consommable.find(params[:id])
		@printer_conso = PrintersConsommable.find_by consommable_id: @consommable.id
	    @printer = Printer.find(@printer_conso.printer_id)
	    if @consommable.destroy
	    	flash[:notice] = "Le consommable a bien été supprimé."
	  	else
	  		flash[:alert] = "Le consommable n'a pas été supprimé."
	  	end
	    redirect_to @printer
	end


	def destroy
 		@consommable = Consommable.find(params[:id])
	    @consommable.destroy
	    respond_to do |format|
	      format.html { redirect_to consommables_url }
	      format.json { head :no_content }
	      format.js   { render :layout => false }
	    end
	end

	def update_valide
		@consommable = Consommable.find(params[:id])
		@printer_id = PrintersConsommable.find_by(consommable_id: params[:id])
		@printer = Printer.find_by(id: @printer_id.printer_id)
		# puts '*********************************************************'
		# puts '*********************************************************'
		# puts @printer.to_yaml
		# puts '*********************************************************'
		# puts '*********************************************************'
	    
	    # if @consommable.update(:valide_consommables => 'true')
	    #   redirect_to @printer
	    #   flash[:notice] = "Le Consommable a été validé "
	    # else
	    #   render 'edit'
	    # end
	    @consommable.update_attributes(:valide_consommables => true)

	    render nothing: true
	end

	def update
	    @consommable = Consommable.find(params[:id])
	    @consommable.update_attributes(:valide_consommables => true)
	    respond_to do |format|
	      format.html { redirect_to printers_url }
	      format.json { head :no_content }
	      format.js   { render :layout => false }
	    end
	    # @printer = Printer.find(params[:consommable][:printer_id])
	    # if @consommable.update(consommable_params)
	    #   flash[:notice] = "Consommable Modifié "
	    #   redirect_to @printer	      
	    # else
	    #   render 'edit'
	    # end
	end


private
	def valide_consommable_params
		params.require(:consommable).permit(:valide_consommables => true)
	end
	def consommable_params
		params.require(:consommable).permit(:code_consommables, :designation_consommables,  :valide_consommables, :duree_vie_consommables)
	end
	def printer_consos_params
		params.require(:consommable).permit(:printer_id => @printer_id, :consommable_id => @consommable_id)
	end
	def add_consommables_printer_params
		params.require(:consommable).permit(:consommable_id,:code_consommables, :designation_consommables, :printer_id)
	end
end
