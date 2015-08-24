class ConsommablesController < ApplicationController
	#Mettre un autocomplete sur le consommable (dans printer/index et dans printer/show)
	autocomplete :consommable, :code_consommables,:full => true
	def index
		@consommables = Consommable.all
		@consommables_false = @consommables.where("valide_consommables = ?", false).order(code_consommables: :asc)
		@consommables_true = @consommables.where("valide_consommables = ?", true).order(code_consommables: :asc)
		@titre = "Liste des consommables"
	end

	#Recherche manuelle de consommable sous ajax (Printer/Index)
	def ajax_consommable
		#Si le text de recherche est supérieur a 2 lettres
	  if params[:value].length.to_i >= 2
	  	#On récupère la valeur du text rentré par l'utilisateur
	  	@value = params[:value].downcase
	  	#On récupère le champ de rechercher (code_consommable ou designation_consommable)
	  	@column_search = params[:column_search].downcase

	    consommables = Consommable.find_by_sql("select * from consommables
	    	where lower(#{@column_search}) like '%#{@value}%' order by code_consommables asc LIMIT 10")

	    result = consommables.collect do |t|
	      {code_consommables: t.code_consommables,id: t.id, designation_consommables: t.designation_consommables}
	    end
	    #Envoi le tableau si il y a au moin 1 résultat
	    if result.count > 0
		  	respond_to do |format|
		        format.json { render :json => result.to_json }
		    end
	    #Renvoi true si on ne trouve pas de résultat (data.status ==> true)
	    else
	    	benoit = {:status => true}
		 		respond_to do |format|
	      	format.json { render :json => benoit.to_json }
	    	end
	    end
    #Renvoi true si on ne trouve pas de résultat (data.status ==> true)
	  else
			benoit = {:status => true}
		 	respond_to do |format|
	      format.json { render :json => benoit.to_json }
	    end
		end
	end

	#Recherche de consommanble déja existant (printer/show#ajouterConsommable , recherche consommable existant)
	def search
		@printers_consommable = PrintersConsommable.new
		@printers_consommables = PrintersConsommable.all
    @param = params[:consommable][:code_consommables]
    @printer = Printer.find(params[:consommable][:printer_id])
		@conso = Consommable.find_by code_consommables: @param

		#Recherche tous les conso qui n'ont pas de dépendance avec l'imprimante
    @consommables_search = Consommable.find_by_sql("select * from consommables where id 
		in (select  consommable_id from printers_consommables where printer_id != #{@printer.id}
  	and consommable_id NOT IN 
  	(select distinct consommable_id from printers_consommables where printer_id = #{@printer.id} ))
		AND valide_consommables = true order by code_consommables ASC")

		#Recherche tous les conso qui n'ont pas de dépendance dans printer_consommables
		@consommables_hide_in_printers_consommables= Consommable.find_by_sql("Select * from consommables 
		where id not in (select consommable_id from printers_consommables) order by code_consommables ASC")
		@return_value = true
		if @conso.blank?
			@return_value = false
		end
		
		#Si le conso n'est pas nul
		if !@conso.nil?
			#on recherche le conso passer en param dans les 2 listes
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
	
	# Créer un consommable
	def create
		#On récupère la date et l'heure actuel
		@time = Time.now
		@hour = @time.strftime("%H")
		@minute = @time.strftime("%M:%S")
		@date = @time.strftime("%Y-%m-%d")

		#On récupère l'imprimante passez en paramètre
		@printer = Printer.find(params[:consommable][:printer_id])
		@code_conso = params[:consommable][:code_consommables]
		@consommables = Consommable.all
		@bool = false

		#on verifie si le consommable n'existe pas déjà
		@consommables.each do |conso|
			@bool = true if conso.code_consommables == @code_conso
		end
		#Si il n'est pas présent , on crée le consommable
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

	#Ajouter la dépendance a une imprimante
	def add_consommables_printer
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

	   #Mémoriser la visite d'un utilisateur
	   @user_show =  UserShowConsommable.create(consommable_id: @consommable.id, user_id: current_user.id,
	   	date_show: @date, hour_show: @hour, minute_show: @minute)
	   @date_conso = UserAddConsommable.find_by consommable_id: params[:id]
	   if !@date_conso.blank?
	   	@user = User.find(@date_conso.user_id)
	   end
	end

	# Supprimer le consommable définitivement
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

	#Supprimer la dépendance du consommable dans un printer
	def delete_printers_conso
 		@consommable = Consommable.find(params[:id])
 		@printer_conso = PrintersConsommable.find_by consommable_id: @consommable.id
 		@printer = Printer.find(@printer_conso.printer_id)
	end

	#Supprime le consommable définitivement (en ajax)
	def destroy
 		@consommable = Consommable.find(params[:id])
    @consommable.destroy
    respond_to do |format|
      format.html { redirect_to consommables_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
	end

	# Valider un consommable
	def update_valide
		@time = Time.now
		@hour = @time.strftime("%H")
		@minute = @time.strftime("%M:%S")
		@date = @time.strftime("%Y-%m-%d")

		@consommable = Consommable.find(params[:id])
		@printer_id = PrintersConsommable.find_by(consommable_id: params[:id])
		@printer = Printer.find_by(id: @printer_id.printer_id)
    @consommable.update_attributes(:valide_consommables => true)

    #Enregister la validation du consommable
  	@admin_valid_consommable = AdminValidConsommable.create(user_id: current_user.id ,
  	 consommable_id: @consommable.id, date_valid: @date, hour_valid: @hour, minute_valid: @minute)
  	@admin_valid_consommable.save	
	end

	# Modifié un consommable
	def update_attributes
		@time = Time.now
		@hour = @time.strftime("%H")
		@minute = @time.strftime("%M:%S")
		@date = @time.strftime("%Y-%m-%d")

		@consommable = Consommable.find(params[:id])
		@printer_id = PrintersConsommable.find_by(consommable_id: params[:id])
		@printer = Printer.find_by(id: @printer_id.printer_id)
		if @consommable.update_attributes(consommable_params)
			#Faire la tracabilité de la modification
			@user_update_consommable = UserUpdateConsommable.create(user_id: current_user.id ,
			 consommable_id: @consommable.id, date_update: @date, hour_update: @hour, minute_update: @minute)
    	@user_update_consommable.save

      flash[:notice] = "Consommable modifié."
      #Redirige vers l'imprimante, dans la section des conso validés
      redirect_to printer_path(@printer)+ "#consommableTrue"
    else
    	render 'edit'
    end
	end

	# Valider le consommable (en ajax)
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
