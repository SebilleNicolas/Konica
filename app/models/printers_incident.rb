class PrintersIncident < ActiveRecord::Base
	belongs_to :printer #foreign key - printer_id
	belongs_to :incident  #foreign key - incident_id	
end
