class Consommable < ActiveRecord::Base
	has_many :user_add_consommables, :dependent => :destroy
	has_many :user_update_consommables, :dependent => :destroy
	has_many :user_show_consommables, :dependent => :destroy
	has_many :admin_valid_consommables, :dependent => :destroy
	has_many :printers_consommables, :dependent => :destroy
	has_many :printers, :through => :printers_consommables
	belongs_to :replacement
end

