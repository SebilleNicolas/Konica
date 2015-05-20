class CreateUserVisiteIncidents < ActiveRecord::Migration
  def change
    create_table :user_visite_incidents do |t|
    	 	t.datetime :datetime
    	 	t.belongs_to :user
    	 	t.belongs_to :incident
    	 	t.timestamps
    end
  end
end
