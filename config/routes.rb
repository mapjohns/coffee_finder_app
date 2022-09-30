Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  get '/signup', to: 'users#new'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  post '/logout', to: 'sessions#destroy'
  get 'auth/:provider/callback', to: 'sessions#create'
  get '/', to: 'welcome#home'

  resources :users do
    get :signup, on: :member
    resources :reviews, only: [:edit]
  end

  resources :stores do
    resources :coffees, only: [:new, :index]
    resources :locations, only: [:index, :new]
  end

  resources :coffees do
    resources :reviews, only: [:new]
    collection do
      get :most_recent
      get :highest_rated
    end
  end
  
  resources :reviews
  resources :locations, only: [:new, :create]

end
