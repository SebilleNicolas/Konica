class CreateAdminValidIncidents < ActiveRecord::Migration
  def change
    create_table :admin_valid_incidents do |t|
  	 	t.string :date_valid
  	 	t.string :hour_valid
  	 	t.string :minute_valid
  	 	t.belongs_to :user
  	 	t.belongs_to :incident
      t.timestamps
    end
  end
end
