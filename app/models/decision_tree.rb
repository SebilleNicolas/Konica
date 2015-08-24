class DecisionTree < ActiveRecord::Base
	has_many :user_add_decision_trees, :dependent => :destroy
	has_many :user_update_decision_trees, :dependent => :destroy
	has_many :user_show_decision_trees, :dependent => :destroy
	has_many :admin_valid_decision_trees, :dependent => :destroy
	has_many :questions	, dependent: :destroy
end
