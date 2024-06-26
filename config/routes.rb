Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :kitchens, only: [ :index, :show, :new, :create ] do
    resources :reservations, only: [ :new, :create ]
    resources :reviews, only: [ :create, :destroy ] # Adding the reviews routes
  end

  resources :reservations, only: [ :show, :update ]

  #  owner's kitchens
  get 'my_kitchens', to: 'kitchens#my_kitchens'

  # Defines the root path route ("/")
  # root "posts#index"

  # client's reservations
  get 'my_reservations', to: 'reservations#index'
end
