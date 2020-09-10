Rails.application.routes.draw do
  # Home route
  root 'pages#home'

  # Articles routes
  get 'about', to: 'pages#about'
  resources :articles

  # Users routes
  get 'signup', to: 'users#new'
  resources :users, except: %i[new]

  # User session routes
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
