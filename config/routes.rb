Rails.application.routes.draw do
  root :to => 'bus_stops#index'
  resources :bus_lines
  resources :bus_stations
  resources :bus_stops
end
