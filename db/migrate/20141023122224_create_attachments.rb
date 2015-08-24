class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
    	t.string :filename
    	t.string	:file
    	t.string :type_attachment
    	t.belongs_to :printer
    	t.timestamps
    end
  end
end