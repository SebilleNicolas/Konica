class CreateAdminValidReleveCompteurs < ActiveRecord::Migration
  def change
    create_table :admin_valid_releve_compteurs do |t|
  	 	t.string :date_valid
  	 	t.string :hour_valid
  	 	t.string :minute_valid
  	 	t.belongs_to :user
  	 	t.belongs_to :releve_compteur
      t.timestamps
    end
  end
end
