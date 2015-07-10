class Attachment < ActiveRecord::Base
	belongs_to :printer #foreign key - printer_id
	mount_uploader :file, FileUploader
end

