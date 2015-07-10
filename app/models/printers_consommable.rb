class PrintersConsommable < ActiveRecord::Base
	belongs_to :printer #foreign key - printer_id
	belongs_to :consommable  #foreign key - consommable_id	
end
