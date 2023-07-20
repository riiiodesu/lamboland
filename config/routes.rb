Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:index, :create, :new, :update]
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
