class CreateUserConnexions < ActiveRecord::Migration
  def change
    create_table :user_connexions do |t|
    	t.string :date_connect
		 	t.string :hour_connect
		 	t.string :minute_connect
		 	t.belongs_to :user
      t.timestamps
    end
  end
end
