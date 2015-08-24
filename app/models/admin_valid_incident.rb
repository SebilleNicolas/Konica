class AdminValidIncident < ActiveRecord::Base
	belongs_to :user # foreign key - user_id
	belongs_to :incident  # foreign key - incident_id
end
