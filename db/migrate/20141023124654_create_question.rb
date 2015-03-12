class CreateQuestion < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.string :title_question
    	t.integer :Id_route_yes
    	t.integer :Id_route_no
    	t.belongs_to :decision_tree
    	t.timestamps
    end
  end
end
