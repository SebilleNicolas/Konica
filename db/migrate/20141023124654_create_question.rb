class CreateQuestion < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.string :title_question
    	t.string :number_question
    	t.integer :id_route_yes
    	t.integer :id_route_no
    	t.belongs_to :decision_tree
    	t.timestamps
    end
  end
end
