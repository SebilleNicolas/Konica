class CreatePrintersIncidents < ActiveRecord::Migration
  def change
    create_table :printers_incidents do |t|
      t.belongs_to :incident
      t.belongs_to :printer

      t.timestamps
    end
  end
end
