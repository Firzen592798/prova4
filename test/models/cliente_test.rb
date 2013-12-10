require 'test_helper'

class ClienteTest < ActiveSupport::TestCase
	test "Verifica se os clientes sem nome eh salvo" do
	  cliente = Cliente.new
	  
	  assert !cliente.save, "Cliente sem nenhum campo preenchido foi salvo"
	end
	
	test "Verifica se os clientes sem CPF eh salvo" do
	  cliente = Cliente.new
	  assert !cliente.save, "Cliente sem nenhum campo preenchido foi salvo"
	end
end

