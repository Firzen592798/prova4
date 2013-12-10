class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :Nome
      t.string :CPF
      t.date :DataNascimento
      t.string :Email
      t.string :Endereco
      t.string :Telefone

      t.timestamps
    end
  end
end
