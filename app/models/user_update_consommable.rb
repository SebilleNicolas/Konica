class UserUpdateConsommable < ActiveRecord::Base
	belongs_to :user  # foreign key - user_id
	belongs_to :consommable  # foreign key - user_id
end
