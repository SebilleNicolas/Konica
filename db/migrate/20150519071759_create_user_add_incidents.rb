class CreateUserAddIncidents < ActiveRecord::Migration
  def change
    create_table :user_add_incidents do |t|
	  	 	t.datetime :date_add
	  	 	t.string :datetimestring
    	 	t.belongs_to :user
    	 	t.belongs_to :incident
    	 	t.timestamps
    end
  end
end
