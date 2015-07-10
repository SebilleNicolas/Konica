class UserShowReleveCompteur < ActiveRecord::Base
	belongs_to :user  # foreign key - user_id
	belongs_to :releve_compteur  # foreign key - releve_compteur_id
end
