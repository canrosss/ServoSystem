Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Recurso para manejar products
  # new, index, show, update,
  resources :products

  get 'index'

end
