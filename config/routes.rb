SampleApp::Application.routes.draw do
 
  devise_for :users , :controllers => { :registrations => "registrations",:users => "users",:sessions => "sessions"}#, :passwords => "passwords" }
  resources :printers_consommables
  # resources :printers, :member => {:download => :get }
  resources :attachments do
    member do
      post :add_img  
    end
    collection do 
    end
  end
  
  resources :decision_trees do
    member do
    end
    collection do
      get :add_title_first_question_decision_tree
    end
      resources :questions do
        member do
          get :delete
        end
        collection do
          get :ajax_titi

        end
      end
  end
  
  resources :printers do
    member do
      patch :update_description
      patch :update_code_printers  
    end
    collection do
      get :autocomplete_printer_code_printers
      # get :autocomplete_code_printers
      get :search
      get :delete_printers_consommables
      # get :update_valide
      get :ajax_printer
    end
    resources  :download do
      collection do 
        get :show
    end
    end
  end



  resources :pages do
    get :autocomplete_incident_code_incidents, :on => :collection 
  end




  resources :incidents do
    member do
      put :showAllIncidents
      delete :remove
      patch :update_valide
      delete :delete
    end
    collection do
      get :ajax_incident
    end
    get :search , :on => :collection 
  end




  resources :consommables do
    member do
      patch :update  
      delete :delete_consommable
      post :add_consommables_printer  
      delete :delete
      patch :update_attributes
    end
    collection do 
      get :update_valide
      get :ajax_consommable
      get :autocomplete_consommable_code_consommables
      get :search
      get :search_conso_existant
    end
  end

  resources :releve_compteurs do
    member do
      delete :delete
      patch :valide
      patch :update_valide
    end
  end
  
  resources :users do
    member do
      patch :update_valide
      patch :update_role

      
      get :add_incidents
      get :add_consommables
      get :add_releve_compteurs
      get :add_decision_trees

      get :update_incidents
      get :update_consommables
      get :update_releve_compteurs
      get :update_decision_trees

      get :valid_incidents
      get :valid_consommables
      get :valid_releve_compteurs
      get :valid_decision_trees

    end
    collection do
      get :manage
      get :ajax_search_date
      get :ajax_search_user
      get :ajax_search_object

    end
  end
 devise_for :sessions do
  member do
    post :create
  end
  collection do
    get :deconnexion

  end
end



  match '/contact', :to => 'pages#contact' , :via => [:get]
  match '/about',   :to => 'pages#about', :via => [:get]

  match '/recherche',    :to => 'pages#recherche', :via => [:get]
  match '/home',    :to => 'pages#home', :via => [:get]
  match '/inscrip2',    :to => 'pages#inscrip2', :via => [:get]
  match '/test',    :to => 'pages#test', :via => [:get]
  match '/manage',    :to => 'pages#manage', :via => [:get]


  match '/index',    :to => 'printers#index', :via => [:get], :controllers => { :printers => "printers" }

  root :to => 'printers#index'
  # root :to => 'printers#index'
  # if current_user.sign_in?
  #   root :to => 'pages#inscription'
  # else
  #   root :to => 'users#sign_in'
  # end
end