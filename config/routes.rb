Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # see all the restaurants
  get '/restaurants', to: 'restaurants#index'

  # add a new restaurant and be redirected to show view of that new restaurant
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post '/restaurants', to: 'restaurants#create'

  # and be redirected to show view of that new restaurant
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  # add new review to a restaurant (GET "restaurants/38/reviews/new")
  # POST "restaurants/38/reviews"
  resources :restaurants, only: [:show] do
    resources :reviews, only: [:create]
  end
end
