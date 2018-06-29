Rails.application.routes.draw do
  resources :flood_data
  resources :rain_data
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: "pages#home"
end
