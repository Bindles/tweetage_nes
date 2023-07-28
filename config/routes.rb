Rails.application.routes.draw do
  resources :users
  resources :profiles
  resources :tweets do
    resources :comments
  end
  root 'tweets#index'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
