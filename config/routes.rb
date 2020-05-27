Rails.application.routes.draw do

  # users_controller routing
  get '/login', to: 'users#login'
  get '/profile', to: 'users#profile'
  post '/create_account', to: 'users#create'
  patch '/change_username', to: 'users#update'
  delete '/delete', to: 'users#destroy'

  # rooms_controller routing
  post '/create_room', to: 'rooms#create'
  delete '/delete_room/:id', to: 'rooms#destroy'

  # game_record routing


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
