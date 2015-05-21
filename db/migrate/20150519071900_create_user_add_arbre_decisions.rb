class CreateUserAddArbreDecisions < ActiveRecord::Migration
  def change
    create_table :user_add_decision_trees do |t|
    	 	t.string :date_add
    	 	t.string :hour_add
    	 	t.string :minute_add
    	 	t.belongs_to :user
    	 	t.belongs_to :decision_tree
    	 	t.timestamps
    end
  end
end
