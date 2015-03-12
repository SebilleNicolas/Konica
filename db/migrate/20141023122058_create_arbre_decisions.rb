class CreateArbreDecisions < ActiveRecord::Migration
  def change
    create_table :decision_trees do |t|
    	t.string :title_decision_tree
    	t.timestamps
    end
  end
end
