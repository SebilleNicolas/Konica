class CreatePrintersConsommables < ActiveRecord::Migration
  def change
    create_table :printers_consommables do |t|
    	t.belongs_to :consommable
    	t.belongs_to :printer
    	t.timestamps
    end
  end
end
