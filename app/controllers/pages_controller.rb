class PagesController < ApplicationController
  autocomplete :incident, :code_incidents, :full => true
  def home
    @titre = "Accueil"
    @incident = Incident.new
    @incidents = Incident.all
    @consommable = Consommable.new
    @consommables = Consommable.all
  end
  # def autocomplete_incident_code_incidents
  #   puts 'toto'
  #   @param = params[:term]
  #   puts @param.to_yaml
  #   @incident = Incident.find_by_sql("SELECT  incidents.id, incidents.code_incidents 
  #   FROM incidents  WHERE (LOWER(incidents.code_incidents) ILIKE lower('% #{@param} %'))
    
  #     ORDER BY incidents.code_incidents ASC LIMIT 10")
  #   puts '***********************************************************'
  #   puts @incident.count
  # end
  def about
	  @titre = "A propos"
  end

  def contact
  	@titre = "Contact"
    # @elements = Element.all
    # @elements.to_json
    @printers  = Printer.all
  end

  def profil
  	@titre = "Profil"
  end
  def recherche
    @printers = Printer.all
    @user = User.find(current_user.id)
    @users = User.all
    @incident = Incident.new
    @incidents = Incident.all
    @consommable = Consommable.new
    @consommables = Consommable.all
    @titre = "Recherche"
  end
  def inscription
    @titre = "Inscription"
    @user = User.find(current_user.id)
    @users = User.all
    @incident = Incident.new
    @incidents = Incident.all
    @consommable = Consommable.new
    @consommables = Consommable.all
  end
  def edit
    @titre = "Inscription 2"
  end
  def listeImprimante
    @printers = Printer.all
  end

  def manage  
    @users = User.all
    @titre = "Gérer Utilisateur"
  end
   
end