json.extract! pedido_produto, :id, :pedido_id, :produto_id, :unidade, :quantidade, :valor_unitario, :valor_total_item, :created_at, :updated_at
json.url pedido_produto_url(pedido_produto, format: :json)
