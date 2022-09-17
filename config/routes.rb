Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :coffees, only: [:index, :show]
    resources :reviews, only: [:index, :show]
  end

  resources :coffees
  resources :reviews
  
  get '/signup', to: 'users#new'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  post '/logout', to: 'sessions#destroy'
  get 'auth/:provider/callback', to: 'sessions#create'
end
