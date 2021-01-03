class HomeController < ApplicationController
    skip_before_action  :valida_logado_admin
    layout "site"
    def index 
        @produtos = Produto.all
        @produtos = @produtos.where(tipo_produto_id: params[:tipo_produto]) if params[:tipo_produto].present?
        
    end 
end
