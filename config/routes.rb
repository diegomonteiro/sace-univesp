Rails.application.routes.draw do
  resources :alert_stations
  resources :rain_rules
  resources :flood_rules
  resources :flood_data
  resources :rain_data
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: "pages#home"
end
