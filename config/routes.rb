Rails.application.routes.draw do
  resources :turns
  post '/sessions', to: 'sessions#create', as: 'sessions_create'
  post '/add_a_turn', to: 'sessions#add_a_turn', as: 'add_a_turn'
  get '/draw', to: 'pages#draw', as: 'draw'
  resources :sessions, except: [:create, :index]
  resources :users


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#homepage'
end
