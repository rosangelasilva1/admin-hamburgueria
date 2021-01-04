module ProdutoHelper
    def existe_o_produto_no_carrinho(id)
        return false if cookies[:carrinho].blank?
        produtos = JSON.parse(cookies[:carrinho])
        produtos.include?(id.to_s)
    end
end
