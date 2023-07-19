Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:index, :update]
  # Defines the root path route ("/")
  root to: "pages#home"
  resources :lambos, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create, :index]
  end
  namespace :owner do
    resources :bookings, only: :index
    resources :lambos, only: :index
  end
end
