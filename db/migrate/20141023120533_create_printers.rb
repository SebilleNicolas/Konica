class CreatePrinters < ActiveRecord::Migration
  def change
    create_table :printers do |t|
	  	t.string 	 :code_printers, :primary_key
    	t.text 	 :description_printers
      t.timestamps		
    end
  end
end
