Rails.application.routes.draw do
  resources :room_networks
  resources :clothes
  resources :cars
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
