Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'aircrafts' => 'aircrafts#index'
  get 'aircrafts/new' => 'aircrafts#new'
  post 'aircrafts' => 'aircrafts#create'
  get 'aircrafts/:id' => 'aircrafts#show'


  get 'airports' => 'airports#index'



  get 'flights' => 'flights#index'

end
