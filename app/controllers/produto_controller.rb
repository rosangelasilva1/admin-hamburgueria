class ProdutoController < ApplicationController
    skip_before_action  :valida_logado_admin
    layout "site"
    def index 
        @produto = Produto.find(params[:produto_id])
    end 

    def adicionar
        if cookies[:carrinho].present?
            produtos = JSON.parse(cookies[:carrinho])
        else
            produtos = []
        end 

        produtos << params[:produto_id]
        produtos.uniq!
        time_logado = 1.year.from_now
        cookies[:carrinho] = {value:produtos.to_json,expires:time_logado,httponly:true}
        redirect_to "/home"
        
    end 
end
