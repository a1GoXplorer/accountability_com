Rails.application.routes.draw do

  root to: 'sites#index'

  get "/login", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  get "/sign_up", to: "users#new", as: "sign_up"

  resources :users

  
  
  get 'sites/index'

  get 'sites/about'

  get 'sites/contact'

  get 'sessions/new'


end
