Rails.application.routes.draw do
  resources :students
  resources :mascota
  resources :estudiantes
  resources :peliculas
  resources :room_networks
  resources :clothes
  resources :cars
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
