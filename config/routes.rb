SampleApp::Application.routes.draw do
 

  get 'releves_compteurs/new'

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
      resources :questions
    # resources :questions do
    #   member do
    #   end
    #   collection do
    #   end
    # end
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
    # get :search , :on => :collection 
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
    end
    collection do
      get :manage
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
  # devise_for :users, :controllers => { :registrations => "registrations" }, :skip => [:registrations, :sessions] do 

  #   get 'signup' => 'devise/registrations#new', :as => :new_user_registration 
  #   post 'signup' => 'devise/registrations#create', :as => :custom_user_registration 
  #   get 'users/cancel' => 'devise/registrations#cancel', :as => :cancel_user_registration 
  #   get 'account/edit' => 'devise/registrations#edit', :as => :custom_edit_user_registration 
  #   put 'account' => 'devise/registrations#update', :as => :custom_update_user_registration
  #   delete 'users/cancel' => 'devise/registrations#destroy'   
  #   # devise/sessions 
  #   get 'signin' => 'devise/sessions#new', :as => :new_user_session 
  #   post 'signin' => 'devise/sessions#create', :as => :user_session 
  #   delete 'signout' => 'devise/sessions#destroy', :as => :destroy_user_session

  # end







  # match '/new', :to => 'users#new' , :via => [:get]
  # match '/edit',    :to => 'users#edit', :via => [:get]
  # match '/show',    :to => 'users#show', :via => [:get]
  # match '/manage',    :to => 'users/devise#manage', :via => [:get]


  # match '/show',    :to => 'printers#show', :via => [:get], :controllers => { :printers => "printers" }
  # match '/test',    :to => 'printers#test', :via => [:get], :controllers => { :printers => "printers" }

  # match '/show',    :to => 'consommables#show', :via => [:get], :controllers => { :consommables => "consommables" }
  # match '/show',    :to => 'consommables#update', :via => [:put], :controllers => { :consommables => "consommables" }
  # match '/show',    :to => 'consommables#show', :via => [:delete], :controllers => { :consommables => "consommables" }

  # match '/show',    :to => 'incidents#show', :via => [:get], :controllers => { :incidents => "incidents" }
  # match '/show',    :to => 'incidents#show', :via => [:delete], :controllers => { :incidents => "incidents" }

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
  # if user_signed_in?
  #   root :to => 'pages#inscription'
  # else
  #   root :to => 'users#sign_in'
  # end
end