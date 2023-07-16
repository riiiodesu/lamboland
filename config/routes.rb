Rails.application.routes.draw do
  get 'bookings/index'
  get 'bookings/new'
  get 'bookings/create'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:index, :new, :create]
  # Defines the root path route ("/")
  root to: "bookings#index"
  root to: "home#index"
end
