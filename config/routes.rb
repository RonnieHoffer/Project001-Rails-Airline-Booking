Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources  :aircrafts
  resources  :airports
  resources  :flights
  resource   :user
  resources  :bookings

end
