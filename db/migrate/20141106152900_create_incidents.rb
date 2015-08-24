class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
    	t.string :code_incidents
    	t.string :intitule_incidents
    	t.text :description_incidents
    	t.text :solution_incidents
    	t.boolean :valide_incidents

      t.timestamps
    end
  end
end
