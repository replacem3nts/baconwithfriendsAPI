Rails.application.routes.draw do

  # users_controller routing
  post '/login', to: 'users#login'
  get '/profile', to: 'users#profile'
  post '/users', to: 'users#create'
  patch '/profile', to: 'users#update'
  delete '/delete', to: 'users#destroy'

  # rooms_controller routing
  post '/rooms', to: 'rooms#create'
  delete '/rooms/:id', to: 'rooms#destroy'

  # game_record routing
  post '/game_records', to: 'game_records#create'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
