class CreateUserUpdateDecisionTrees < ActiveRecord::Migration
  def change
    create_table :user_update_decision_trees do |t|
    	 	t.string :date_update
    	 	t.string :hour_update
    	 	t.string :minute_update
    	 	t.belongs_to :user
    	 	t.belongs_to :decision_tree
    	 	t.timestamps
    end
  end
end
