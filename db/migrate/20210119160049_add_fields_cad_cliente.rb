class AddFieldsCadCliente < ActiveRecord::Migration[5.2]
  def change
    add_column :clientes, :cpf, :string 
    add_column :clientes, :email, :string 
    add_column :clientes, :cep, :string 
    add_column :clientes, :numero, :string 
    add_column :clientes, :bairro, :string 
    add_column :clientes, :cidade, :string 
    add_column :clientes, :estado, :string 
  end
end
