class Incident < ActiveRecord::Base
	has_many :user_add_incidents, :dependent => :destroy
	has_many :user_update_incidents, :dependent => :destroy
	has_many :user_show_incidents, :dependent => :destroy
	has_many :admin_valid_incidents, :dependent => :destroy
	has_many :printers_incidents, :dependent => :destroy
	has_many :printers, :through => :printers_incidents
	# belongs_to :printer
	attr_accessor :booleanI
end
