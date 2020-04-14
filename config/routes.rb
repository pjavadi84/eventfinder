Rails.application.routes.draw do
  root 'static#home'

  get '/signup/user' => 'users#new'
  post '/signup/user' => 'users#create'

  get '/signup/landlord' => 'landlords#new'
  post '/signup/landlord' => 'landlords#create'

  get '/user_login' => 'sessions#new'
  post '/user_login' => 'sessions#create'

  get '/landlord_login' => 'sessions#new'
  post '/landlord_login' => 'sessions#create'

  delete '/user/logout' => 'sessions#destroy'
  delete '/landlord/logout' => 'sessions#destroy'

  resources :properties
  

  resources :landlords do
    resources :properties, only: [:index, :new, :show]
  end

  resources :users do 
    resources :properties, only: [:index, :show]
  end

  resources :users do
    resources :events
  end
end
