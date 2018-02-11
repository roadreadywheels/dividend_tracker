Rails.application.routes.draw do
  root 'admin_users#index'

  get 'results', :to => 'pages#display_results'

  resources :pages do 
    member do 
      get :delete
    end
  end

  resources :stocks do 
    member do 
      get :delete
    end
    collection { post :import }
    collection { get :bulk_upload }
  end

  resources :accounts do
    member do
      get :delete
    end
  end

  resources :news

  resources :admin_users do 
    member do 
      get :delete
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
