Rails.application.routes.draw do
  resources :dens
  resources :scouts
  root 'sessions#home'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  match '/auth/:provider/callback', to: 'sessions#googlecreate', via: %i[get post], as: 'google'
  get '/auth/google_oath2/callback' => 'sessions#googlecreate'
  

  resources :users



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
