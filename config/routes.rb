Rails.application.routes.draw do
  
  resources :pedidos do
    resources :pedido_produtos
  end
  resources :clientes
  resources :produtos
  resources :tipo_produtos
  
  root  to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
