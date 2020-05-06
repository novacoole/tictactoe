Rails.application.routes.draw do
  resources :turns
  resources :sessions
  resources :users

  post '/sessions/:id', to: 'sessions#create', as: 'session_create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#homepage'
end
