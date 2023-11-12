Rails.application.routes.draw do
  resources :driver_assignments
  resources :bookings
  resources :journey_sightseeing_stops
  resources :journeys
  resources :email_communications
  resources :drivers
  resources :payments
  resources :sightseeing_stops
  resources :vehicles
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
