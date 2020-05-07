Rails.application.routes.draw do
  post '/sessions', to: 'sessions#create', as: 'sessions_create'
  post '/add_a_turn', to: 'sessions#add_a_turn', as: 'add_a_turn'
  get '/draw', to: 'pages#draw', as: 'draw'
  get '/wins/:id', to: 'pages#wins', as: 'wins'
  resources :sessions, only: [:show]
  resources :users, only: [:create]
  root to: 'pages#homepage'
end
