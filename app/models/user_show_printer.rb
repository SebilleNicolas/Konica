class UserShowPrinter < ActiveRecord::Base
	belongs_to :user  # foreign key - user_id
	belongs_to :printer  # foreign key - printer_id
end
