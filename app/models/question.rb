class Question < ActiveRecord::Base
	belongs_to :decision_tree #foreign key - decision_tree_id	
end
