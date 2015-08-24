class ReleveCompteur < ActiveRecord::Base
	has_many :user_add_releve_compteurs, :dependent => :destroy
	has_many :user_update_releve_compteurs, :dependent => :destroy
	has_many :user_show_releve_compteurs, :dependent => :destroy
	has_many :admin_valid_releve_compteurs, :dependent => :destroy
	belongs_to :printer # foreign key - printer_id
end
