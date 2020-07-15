Rails.application.routes.draw do
  get '/auth/google_oath2/callback', to: 'sessions#home'
  root 'sessions#home'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'


  resources :users



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
