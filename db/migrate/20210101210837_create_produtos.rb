class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
      t.references :tipo_produto, foreign_key: true
      t.string :nome
      t.string :descricao
      t.float :valor

      t.timestamps
    end
  end
end
