class CreatePedidoProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :pedido_produtos do |t|
      t.references :pedido, foreign_key: true
      t.references :produto, foreign_key: true
      t.string :unidade
      t.float :quantidade
      t.float :valor_unitario
      t.float :valor_total_item

      t.timestamps
    end
  end
end
