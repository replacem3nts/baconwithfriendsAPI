Rails.application.routes.draw do

  get '/login', to: 'users#login'
  get '/profile', to: 'users#profile'
  post '/create_account', to: 'users#create'
  patch '/change_username', to: 'users#update'
  delete '/delete', to: 'users#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
