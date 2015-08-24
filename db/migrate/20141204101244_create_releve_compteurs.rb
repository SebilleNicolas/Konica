class CreateReleveCompteurs < ActiveRecord::Migration
  def change
    create_table :releve_compteurs do |t|
      t.text :description_releve_compteurs
      t.boolean :valide_releve_compteurs
      t.belongs_to :printer
      t.timestamps
    end
  end
end
