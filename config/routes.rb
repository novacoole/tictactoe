Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/new'
  get 'sessions/show'
  resources :turns, only: [:create, :new, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
