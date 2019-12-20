Rails.application.routes.draw do
  resources :nurses
  devise_for :users
  root to: 'home#index'
  get "/clients/new", to: "clients#new", as: :new_client
  post "/", to: "clients#create", as: :create_client
  get "/clients", to: "clients#index", as: :clients
  get "/client/:id", to: "clients#show", as: :client

  get "/usuarios/:id", to: "usuarios#show", as: :usuario
  patch "/usuarios/:id", to: "usuarios#update"


  authenticated :user do
     get "/dashboard", to: 'home#dashboard'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
