class AddImagemToProdutos < ActiveRecord::Migration[5.2]
  def change
    add_column :produtos,:imagem, :string
  end
end
