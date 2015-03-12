class Printer < ActiveRecord::Base
	# attr_accessible :id, :code_printers, :description_printers, :created_at, :updated_at
	has_many :attachments, :dependent => :destroy
	accepts_nested_attributes_for :attachments


	has_many :releve_compteurs
	
	has_many :printers_incidents
	has_many :incidents ,:through => :printers_incidents
	has_many :printers_consommables
	has_many :consommables, :through => :printers_consommables
	
	after_save :write_json
end
def write_json
  events_json = []
  Printer.all.each do |event|
    event_json = {
      "id" => event.code_printers,
      "start" => event.description_printers,
      "end" => event.created_at,
      "title" => event.updated_at
    } 
    events_json << event_json
  end
  File.open("public/events_json.json","w") do |f|
    f.write(events_json.to_json)
  end 
end