class ConsommablesController < ApplicationController
	autocomplete :consommable, :code_consommables,:full => true
	def index
		@consommables = Consommable.all
		@consommables_false = @consommables.where("valide_consommables = ?", false).order(code_consommables: :asc)
		@consommables_true = @consommables.where("valide_consommables = ?", true).order(code_consommables: :asc)
		#@printer = Printer.find(params[:id])
		@titre = "Liste des consommables"
	end

	# def consommables_true_tbody
	#    consommables = Consommable.find_by_sql("select * from consommables
	#      where valide_consommables = true")
	#    result = printers.collect do |t|
	#      {id: t.id,code_consommables: t.code_consommables, :designation_consommables t.designation_consommables,
	#      	:duree_vie_consommables t.duree_vie_consommables}
	#    end
	#    render partial: "consommables_true", locals: {consommables: @consommables}
	#  end
	def ajax_consommable
	  # @@value = params[:value]
	  if params[:value].length.to_i >= 2
	  	@value = params[:value].downcase
	  	@column_search = params[:column_search].downcase
	    # printers = Printer.select([:code_printers],[:id]).where("lower(code_printers) LIKE ?", "%#{params[:value].downcase}%")
	    consommables = Consommable.find_by_sql("select * from consommables
	    	where lower(#{@column_search}) like '%#{@value}%' order by code_consommables asc LIMIT 10")
	    result = consommables.collect do |t|
	      {code_consommables: t.code_consommables,id: t.id, designation_consommables: t.designation_consommables}
	    end
	    if result.count > 0
		  	respond_to do |format|
		        format.json { render :json => result.to_json }
		    end
	    else
	    	benoit = {:status => true}
		 		respond_to do |format|
	      	format.json { render :json => benoit.to_json }
	    	end
	    end
	  else
			benoit = {:status => true}
		 	respond_to do |format|
	      format.json { render :json => benoit.to_json }
	    end
		end
	end

	def search
		@printers_consommable = PrintersConsommable.new
		@printers_consommables = PrintersConsommable.all
    @param = params[:consommable][:code_consommables]
    @printer = Printer.find(params[:consommable][:printer_id])
    # puts '************************************************'
		# @conso = Consommable.find_by code_consommables: @param
		# @conso = Consommable.where("code_consommables LIKE :param", param: "#{param}%")
		# @conso = Consommable.find_by_sql("
		# 	select * from consommables 
		# where code_consommables  LIKE '%#{@param}%'")
		@conso = Consommable.find_by code_consommables: @param
    @consommables_search = Consommable.find_by_sql("select * from consommables where id 
		in ( select  consommable_id from printers_consommables where printer_id != #{@printer.id}
  	and consommable_id NOT IN 
  	(select distinct consommable_id from printers_consommables where printer_id = #{@printer.id} ))
		AND valide_consommables = true order by code_consommables ASC")
		@consommables_hide_in_printers_consommables= Consommable.find_by_sql("
			select * from consommables 
		where id not in (select consommable_id from printers_consommables) order by code_consommables ASC")
		@return_value = true
		if @conso.blank?
			@return_value = false
		end
		
		# puts @conso.id
		if !@conso.nil?
			@consommables_search.each do |c|
				if c.id == @conso.id
					@search = @conso
				end
			end
			@consommables_hide_in_printers_consommables.each do |c|
				if c.id == @conso.id
					@search = @conso
				end
			end
		end
	end
	def home
			@consommables = Consommable.all
	end
	def new
		@consommable = Consommable.new
	end
	
	def create
		@time = Time.now
		@hour = @time.strftime("%H")
		@minute = @time.strftime("%M:%S")
		@date = @time.strftime("%Y-%m-%d")
		# puts params[:consommable][:printer_id]
		@printer = Printer.find(params[:consommable][:printer_id])
		@code_conso = params[:consommable][:code_consommables]
		@consommables = Consommable.all
		@bool = false
		@consommables.each do |conso|
			@bool = true if conso.code_consommables == @code_conso
		end
		if @bool == false
			@consommable = @printer.consommables.create(consommable_params)
			respond_to do |format|
				if @consommable.save
					@user_add_consommable = UserAddConsommable.create(user_id: current_user.id, consommable_id: @consommable.id,
					 date_add: @date, hour_add: @hour, minute_add: @minute)
					@user_add_consommable.save
					flash[:notice] = "Le consommable a bien été créé."
					format.html {redirect_to printer_path(@printer)+ "#ajouterConsommable"}
				else
					flash[:alert] = "Le consommable n'a pas été créé"
					format.html {redirect_to @printer}
				end
			end
		else
			flash[:alert] = "Le consommable #{@code_conso} existe déjà."
			redirect_to printer_path(@printer)+ "#ajouterConsommable"
		end
	end

	def add_consommables_printer
		# puts params[:consommable][:printer_id]
		@printer = Printer.find(params[:consommable][:printer_id])
		@consommable = @printer.consommables.create(add_consommables_printer_params)
		
	end
	def show
		@time = Time.now
		@hour = @time.strftime("%H")
		@minute = @time.strftime("%M:%S")
		@date = @time.strftime("%Y-%m-%d")
    @consommable = Consommable.find(params[:id])
    @printer_conso = PrintersConsommable.find_by consommable_id: @consommable.id
    @printer = Printer.find(@printer_conso.printer_id)
    @r = Replacement.find(@consommable.replacement_id)
    @titre = "CONSO"
    @list_printers_consommable = Printer.find_by_sql("select * from printers where id 
 in ( select  printer_id from printers_consommables where consommable_id = #{@consommable.id})")
	   @user_show =  UserShowConsommable.create(consommable_id: @consommable.id, user_id: current_user.id,
	   	date_show: @date, hour_show: @hour, minute_show: @minute)
	   @date_conso = UserAddConsommable.find_by consommable_id: params[:id]
	   if !@date_conso.blank?
	   	@user = User.find(@date_conso.user_id)
	   end
	end

  	def delete
		@consommable = Consommable.find(params[:id])
		@printer_conso = PrintersConsommable.find_by consommable_id: @consommable.id
	    @printer = Printer.find(@printer_conso.printer_id)
	    if @consommable.destroy
	    	flash[:notice] = "Le consommable a bien été supprimé."
	  	else
	  		flash[:alert] = "Le consommable n'a pas été supprimé."
	  	end
	    redirect_to @printer
	end
	def delete_printers_conso
		puts '**********'
 		@consommable = Consommable.find(params[:id])
 		@printer_conso = PrintersConsommable.find_by consommable_id: @consommable.id
 		@printer = Printer.find(@printer_conso.printer_id)
 		#  puts '**********'

 		#   puts '**********'
 		#   puts @consommable.to_yaml
 		#   puts '**********'
			# puts @printer_conso.to_yaml
	  #   puts '**********'
	  #   puts @printer.to_yaml
	    # @consommable.destroy
   #  if @consommable.destroy
   #  	flash[:notice] = "Le consommable a bien été supprimé."
  	# else
  	# 	flash[:alert] = "Le consommable n'a pas été supprimé."
  	# end
	    # respond_to do |format|
	    #   format.html { redirect_to consommables_url }
	    #   format.json { head :no_content }
	    #   format.js   { render :layout => false }
	    # end
	  # puts '**********'
    # redirect_to printer_path(@printer)
	end

	#Supprime le consommable de partout
	def destroy
 		@consommable = Consommable.find(params[:id])
 		# @printer_conso = PrintersConsommable.find_by(consommable_id: @consommable.id)
	    @consommable.destroy
	    respond_to do |format|
	      format.html { redirect_to consommables_url }
	      format.json { head :no_content }
	      format.js   { render :layout => false }
	    end
	    # redirect_to consommables_path
	end

	def update_valide
		@time = Time.now
		@hour = @time.strftime("%H")
		@minute = @time.strftime("%M:%S")
		@date = @time.strftime("%Y-%m-%d")
		@consommable = Consommable.find(params[:id])
		@printer_id = PrintersConsommable.find_by(consommable_id: params[:id])
		@printer = Printer.find_by(id: @printer_id.printer_id)
		# puts '*********************************************************'
		# puts '*********************************************************'
		# puts @printer.to_yaml
		# puts '*********************************************************'
		# puts '*********************************************************'
	    
	    # if @consommable.update(:valide_consommables => 'true')
	    #   redirect_to @printer
	    #   flash[:notice] = "Le Consommable a été validé "
	    # else
	    #   render 'edit'
	    # end
	    @consommable.update_attributes(:valide_consommables => true)
    	@admin_valid_consommable = AdminValidConsommable.create(user_id: current_user.id ,
    	 consommable_id: @consommable.id, date_valid: @date, hour_valid: @hour, minute_valid: @minute)
    	@admin_valid_consommable.save
	    # render nothing: true
	end


	def update_attributes
		@time = Time.now
		@hour = @time.strftime("%H")
		@minute = @time.strftime("%M:%S")
		@date = @time.strftime("%Y-%m-%d")
		@consommable = Consommable.find(params[:id])
		@printer_id = PrintersConsommable.find_by(consommable_id: params[:id])
		@printer = Printer.find_by(id: @printer_id.printer_id)
		if @consommable.update_attributes(consommable_params)
			@user_update_consommable = UserUpdateConsommable.create(user_id: current_user.id ,
			 consommable_id: @consommable.id, date_update: @date, hour_update: @hour, minute_update: @minute)
    	@user_update_consommable.save
      flash[:notice] = "Consommable modifié."
      redirect_to printer_path(@printer)+ "#consommableTrue"
    else
    	render 'edit'
    end
	end


	def update
		@time = Time.now
		@hour = @time.strftime("%H")
		@minute = @time.strftime("%M:%S")
		@date = @time.strftime("%Y-%m-%d")
    @consommable = Consommable.find(params[:id])
    @consommable.update_attributes(:valide_consommables => true)
  	@admin_valid_consommable = AdminValidConsommable.create(user_id: current_user.id ,
  	 consommable_id: @consommable.id, date_valid: @date, hour_valid: @hour, minute_valid: @minute )
  	@admin_valid_consommable.save
    respond_to do |format|
      format.html { redirect_to printers_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end	
    # @printer = Printer.find(params[:consommable][:printer_id])
    # if @consommable.update(consommable_params)
    #   flash[:notice] = "Consommable Modifié "
    #   redirect_to @printer	      
    # else
    #   render 'edit'
    # end
	end


private
	def valide_consommable_params
		params.require(:consommable).permit(:valide_consommables => true)
	end
	def consommable_params
		params.require(:consommable).permit(:code_consommables, :designation_consommables,  :valide_consommables,:replacement_id, :duree_vie_consommables)
	end
	def printer_consos_params
		params.require(:consommable).permit(:printer_id => @printer_id, :consommable_id => @consommable_id)
	end
	def add_consommables_printer_params
		params.require(:consommable).permit(:consommable_id,:code_consommables, :designation_consommables, :printer_id)
	end
end
