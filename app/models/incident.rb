class Incident < ActiveRecord::Base
	has_many :printers_incidents, :dependent => :destroy
	has_many :printers, :through => :printers_incidents
	# belongs_to :printer
	attr_accessor :booleanI
end
