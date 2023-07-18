Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:index, :new, :create]
  # Defines the root path route ("/")
  root to: "pages#home"
  resources :lambos
end
