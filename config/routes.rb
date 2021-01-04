Rails.application.routes.draw do
  
  resources :administradors
  resources :pedidos do
    resources :pedido_produtos
  end
  resources :clientes
  resources :produtos
  resources :tipo_produtos
  
  root  to: 'home#index'

  get '/admin', to: 'admin#index'
  get '/home', to: 'home#index'
  get '/login', to: 'login#index'
  post '/login/logar', to: 'login#logar'
  get '/login/sair', to: 'login#sair'
  get '/produto/:produto_id',to: 'produto#index'
  get '/produto/:produto_id/adicionar',to: 'produto#adicionar'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
