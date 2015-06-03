class CreateUserShowDecisionTrees < ActiveRecord::Migration
  def change
    create_table :user_show_decision_trees do |t|
 	  		t.string :date_show
	  	 	t.string :hour_show
	  	 	t.string :minute_show
    	 	t.belongs_to :user
    	 	t.belongs_to :decision_tree
    end
  end
end
