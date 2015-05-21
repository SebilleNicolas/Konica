class CreateUserAddReleveCompteurs < ActiveRecord::Migration
  def change
    create_table :user_add_releve_compteurs do |t|
    	 	t.string :date_add
    	 	t.string :hour_add
    	 	t.string :minute_add
    	 	t.belongs_to :user
    	 	t.belongs_to :releve_compteur
    	 	t.timestamps
    end
  end
end
