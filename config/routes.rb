Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Recurso para manejar products
  # new, index, show, update,
  resources :products

  #Cuando el navegador pida /pages/home manda a controller#vista home o index
  #   ruta -> controller#vista
  get '/contact', to:'pages#contact'
  get '/about', to:'pages#about'
  root :to => 'pages#home'


end
