Rails.application.routes.draw do
  resources :bus_lines
  resources :bus_stations, :except => :show
  resources :bus_stops
end
