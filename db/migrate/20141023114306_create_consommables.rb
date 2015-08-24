class CreateConsommables < ActiveRecord::Migration
  def change
    create_table :consommables do |t|
	    	t.string :code_consommables
	    	t.string :designation_consommables
	    	t.boolean	 :valide_consommables
	    	t.string	:duree_vie_consommables
	    	t.belongs_to :replacement
	    t.timestamps			
    end
  end
end
