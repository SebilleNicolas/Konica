class CreateReplacements < ActiveRecord::Migration
  def change
    create_table :replacements do |t|
      t.string :name
   
      t.timestamps
    end
  end
end
