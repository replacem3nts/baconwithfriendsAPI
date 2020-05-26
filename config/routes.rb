Rails.application.routes.draw do
  resources :users
  resources :game_records

  get '/login', to: 'users#login'

  # post '/users/login', to 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
