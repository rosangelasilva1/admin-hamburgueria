class Cliente < ApplicationRecord

    validates :nome, presence: true
    validates :enderco, presence: true
    validates :telefone, presence: true
    validates :cpf, presence: true
    validates :email, presence: true
    validates :cep , presence: true
    validates :numero, presence: true
    validates :bairro, presence: true
    validates :cidade, presence: true 
    validates :estado, presence: true

end
