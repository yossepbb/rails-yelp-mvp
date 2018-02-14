Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get "restaurants", to: "restaurants#index"
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "restaurants", to: "restaurants#create"

  # get "restaurant/:id", to: "restaurants#show"


  # # get "task/:id/edit", to: "tasks#edit", as: :edit_task
  # # patch "task/:id", to: "tasks#update"

  # # delete "task/:id", to: "tasks#destroy"

  resources :restaurants, only: [:create, :new, :index, :show, :edit, :update, :destroy] do

  resources :reviews, only: [:create, :new]

  end

  # new_restaurant_review  GET   /restaurants/:restaurant_id/reviews/new  reviews#new
  #  restaurant_reviews  POST  /restaurants/:restaurant_id/reviews      reviews#create
end
