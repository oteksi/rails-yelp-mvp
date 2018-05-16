Rails.application.routes.draw do

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end

  # # restaurants
  # get    "restaurants",          to: "restaurants#index"

  # get    "restaurants/new",      to: "restaurants#new", as: "new"
  # post   "restaurants",          to: "restaurants#create"

  # get    "restaurants/:id",      to: "restaurants#show", as: "restaurant"

  # # reviews
  # post   "restaurants/:restaurant_id/reviews",          to: "reviews#create"

end
