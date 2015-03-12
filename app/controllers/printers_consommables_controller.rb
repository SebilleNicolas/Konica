class PrintersConsommablesController < ApplicationController

	
	def create 
		
		@printers_consommable = PrintersConsommable.create(add_consommables_printer_params)

		puts params[:printers_consommable][:printer_id].to_yaml
		@printer = Printer.find(params[:printers_consommable][:printer_id])
		if @printers_consommable.save
			flash[:notice] = "Le consommable a bien été ajouté dans l'Imprimante #{@printers_consommable.printer_id}."
			redirect_to printer_path(params[:printers_consommable][:printer_id]) + "#ajouterConsommable"
		else
			flash[:alert] = "Le consommable n'a pas été ajouté."
		end
	end
private
	def add_consommables_printer_params
		params.require(:printers_consommable).permit(:consommable_id, :printer_id)
	end
end