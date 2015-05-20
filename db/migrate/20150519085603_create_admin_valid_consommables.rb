class CreateAdminValidConsommables < ActiveRecord::Migration
  def change
    create_table :admin_valid_consommables do |t|
 	 		t.datetime :datetime
  	 	t.belongs_to :user
  	 	t.belongs_to :consommable
      t.timestamps
    end
  end
end
