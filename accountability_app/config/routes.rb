Rails.application.routes.draw do

  get 'senators/show'

  get 'senators/new'

  get 'senators/edit'

  root to: 'sites#index'

  resources :users, except: [:new]

  get "/sign_up", to: "users#new"
  get "/profile", to: "users#profile"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/session", to: "sessions#destroy"
  get '/logout', to: 'sessions#destroy'

  get 'sites/index'

  get 'sites/about'

  get 'sites/contact'

  get 'sessions/new'


end
