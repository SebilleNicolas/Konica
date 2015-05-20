class CreateAdminValidDecisionTrees < ActiveRecord::Migration
  def change
    create_table :admin_valid_decision_trees do |t|
  	 	t.datetime :datetime
  	 	t.belongs_to :user
  	 	t.belongs_to :decision_tree
      t.timestamps
    end
  end
end
