Rails.application.routes.draw do

  root "demo#index"
  #get 'demo/index'
  match ':controller(/:action(/:id))', :via => [:get, :post]

end
