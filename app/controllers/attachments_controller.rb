class AttachmentsController < ApplicationController
	def index
	

	end
	def new	
		@attachment = Attachment.new
		@titre = "Ajouter une piece jointe"
	end

	# def update
	# 	@attachment = Attachment.find(params[:id])
 #    if @incident.update(incident_update_params)
 #      flash[:notice] = "Incident modifié a une valeur 'VRAI'"
 #      redirect_to printers_path	      
 #    else
 #    	render 'edit'
 #    end
	# end

	def create
		@printer = Printer.find(params[:attachment][:printer_id])
		@attachment = Attachment.create(attachment_params)
		puts params[:attachment][:file]
		puts "****************************************"
		puts @attachment.to_yaml
		@attachment.save
		if @attachment.save
			flash[:notice] = "La piece jointe a bien été créé."
			redirect_to @printer
		else
			# puts @attachment.errors.to_yaml
			flash[:alert] = "La piece jointe n'a pas été créé"
			redirect_to @printer
		end
	end

	def edit
		@attachment = Attachment.find(params[:id])
	end


	def show
		
	end		
	
	def destroy
 		@attachment = Attachment.find(params[:id])
 		@printer_id = @attachment.printer_id
 		@printer = Printer.find(@printer_id)
    @attachment.destroy
    respond_to do |format|
      format.html { redirect_to attachment_path }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
	end


private
	

def attachment_params
	params.require(:attachment).permit(:file, :printer_id)
end
	


end


