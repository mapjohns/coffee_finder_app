Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/coffees/most_recent', to: 'coffees#most_recent'
  get '/signup', to: 'users#new'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  post '/logout', to: 'sessions#destroy'
  get 'auth/:provider/callback', to: 'sessions#create'
  get '/', to: 'welcome#home'
  
  resources :users do
    resources :coffees, only: [:index, :show]
    resources :reviews, only: [:index, :show, :edit, :update]
  end

  resources :stores do
    resources :coffees, only: [:new]
    resources :locations, only: [:index, :new]
  end

  resources :coffees do
    resources :reviews, only: [:new]
  end
  resources :reviews
  resources :locations

end
