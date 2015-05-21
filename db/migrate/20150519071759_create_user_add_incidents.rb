class CreateUserAddIncidents < ActiveRecord::Migration
  def change
    create_table :user_add_incidents do |t|
	  	 	t.string :date_add
	  	 	t.string :hour_add
	  	 	t.string :minute_add
    	 	t.belongs_to :user
    	 	t.belongs_to :incident
    	 	t.timestamps
    end
  end
end
