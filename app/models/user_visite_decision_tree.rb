class UserVisiteDecisionTree < ActiveRecord::Base
	belongs_to :user # foreign key - user_id
	belongs_to :decision_tree   # foreign key - decision_tree_id
end
