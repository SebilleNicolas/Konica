class CreateUserAddConsommables < ActiveRecord::Migration
  def change
    create_table :user_add_consommables do |t|
	  	 	t.string :date_add
	  	 	t.string :hour_add
	  	 	t.string :minute_add
    	 	t.belongs_to :user
    	 	t.belongs_to :consommable
    	 	t.timestamps
    end
  end
end
