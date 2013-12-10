json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :Nome, :CPF, :DataNascimento, :Email, :Endereco, :Telefone
  json.url cliente_url(cliente, format: :json)
end
