class DownloadController < ApplicationController
	def show
		@name_file = File.basename(params[:id])
		@ext_file = "."+params[:format]
		@file = @name_file +"."+ @ext_file
    @path = Attachment.find_by file: @file
    arr = params[:id].split("/")
    
   	send_file(Rails.root.join("public","#{arr[1].to_s}","#{arr[2].to_s}",
   		"#{arr[3].to_s}","#{arr[4].to_s}","#{@name_file.to_s+@ext_file.to_s}"))
	end
	
end