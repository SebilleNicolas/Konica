class CreateUserAddReleveCompteurs < ActiveRecord::Migration
  def change
    create_table :user_add_releve_compteurs do |t|
    	 	t.datetime :datetime
    	 	t.belongs_to :user
    	 	t.belongs_to :releve_compteur
    	 	t.timestamps
    end
  end
end
