class AttachmentsController < ApplicationController
	def index
	end
	def new	
		@attachment = Attachment.new
		@titre = "Ajouter une piece jointe"
	end

	#Ajouter une pièce jointe et inclure la dépendance dans le printer
	def create
		@printer = Printer.find(params[:attachment][:printer_id])
		@attachment = Attachment.create(attachment_params)
		@attachment.save
		if @attachment.save
			flash[:notice] = "La piece jointe a bien été créé."
			redirect_to @printer
		else
			flash[:alert] = "La piece jointe n'a pas été créé"
			redirect_to @printer
		end
	end

	def edit
		@attachment = Attachment.find(params[:id])
	end
	
	# Supprimer uhe pièce jointe (en ajax)
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