class CreateUserUpdateReleveCompteurs < ActiveRecord::Migration
  def change
    create_table :user_update_releve_compteurs do |t|
    	 	t.string :date_update
    	 	t.string :hour_update
    	 	t.string :minute_update
    	 	t.belongs_to :user
    	 	t.belongs_to :releve_compteur
    	 	t.timestamps
    end
  end
end
