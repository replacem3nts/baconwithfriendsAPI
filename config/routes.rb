Rails.application.routes.draw do

  # users_controller routing
  post '/login', to: 'users#login'
  post '/users', to: 'users#create'
  patch '/users', to: 'users#update'
  delete '/delete', to: 'users#destroy'
  get '/users/confirm_logged_in', to: 'users#confirm_logged_in'

  # rooms_controller routing
  post '/rooms', to: 'rooms#create'
  delete '/rooms/:id', to: 'rooms#destroy'
  get '/rooms', to: 'rooms#index'
  get '/rooms/:id', to: 'rooms#show'

  # game_record routing
  get '/game_records/:id', to: 'game_records#user_records'
  post '/game_records', to: 'game_records#create'
  delete '/game_records/:id', to: 'game_records#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
