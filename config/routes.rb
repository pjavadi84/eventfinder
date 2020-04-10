Rails.application.routes.draw do
  root 'static#home'
  resources :users do
    resources :events
  end
end
