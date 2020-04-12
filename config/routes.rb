Rails.application.routes.draw do
  root 'static#home'

  #Users Routes:
  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  #Property Routes:
  get '/properties', to: 'properties#index', as: 'properties'
  get '/properties/new', to: 'properties#new', as: 'new_property'
  post '/properties', to: 'properties#create'
  get '/properties/:id', to: 'properties#show', as: 'property'
  

  #Landlord Routes:
  get '/landlords/new', to: 'landlords#new', as: 'new_landlord'
  post '/landlords', to: 'landlords#create'
  get '/landlords/:id', to: 'landlords#show', as: 'landlord'
end
