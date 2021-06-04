Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'aircrafts' => 'aircrafts#index'
  get 'aircrafts/:id' => 'aircrafts#show'
  
  get 'aircrafts/new' => 'recipes#new'



  get 'airports' => 'airports#index'



  get 'flights' => 'flights#index'

end
