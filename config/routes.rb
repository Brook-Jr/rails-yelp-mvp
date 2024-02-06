Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # GET "restaurants/new" -> restaurants#new
  # POST "restaurants" -> restaurants#create
  # GET "restaurants/:id" -> restaurants#show
  # GET "restaurants/:id/reviews/new" ->
  # POST "restaurants/:id/reviews" ->

  resources :restaurants, only: [:index, :show, :new , :create] do
    resources :reviews, only: [:new, :create]
  end
end
