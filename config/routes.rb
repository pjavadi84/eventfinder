Rails.application.routes.draw do
  root 'static#home'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'

  resources :properties, only: [:create]

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
