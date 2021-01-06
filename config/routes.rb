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
  get '/produto/:produto_id',to: 'ecommerce#index'
  get '/produto/:produto_id/adicionar',to: 'ecommerce#adicionar'
  get '/produto/:produto_id/remover', to: 'ecommerce#remover'
  get '/carrinho',to:'ecommerce#carrinho'
  get 'carrinho/fechar',to: 'ecommerce#fechar_carrinho' 
  get 'cliente/logar',to:'ecommerce#login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
