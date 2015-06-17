class Consommable < ActiveRecord::Base
	has_many :user_add_consommables, :dependent => :destroy
	has_many :user_update_consommables, :dependent => :destroy
	has_many :user_show_consommables, :dependent => :destroy
	has_many :admin_valid_consommables, :dependent => :destroy
	has_many :printers_consommables, :dependent => :destroy
	has_many :printers, :through => :printers_consommables
	belongs_to :replacement
end

# class Printer < ActiveRecord::Base
# 	has_many :printers_consommables
# 	has_many :consommables, :through => :printers_consommables
# end

# class PrintersConsommable < ActiveRecord::Base
# 	belongs_to :printer  #foreign key - printer_id
# 	belongs_to :consommable  #foreign key - consommable_id	
# end
