Rails.application.routes.draw do
  resources :turns
  post '/sessions', to: 'sessions#create', as: 'sessions_create'
  resources :sessions, except: [:create, :index]
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#homepage'
end
