require 'test_helper'

class ClienteTest < ActiveSupport::TestCase
	test "Verifica se os clientes sem nome eh salvo" do
	  cliente = Cliente.new
	  cliente.CPF ='11122233311'
	  assert !cliente.save, "Cliente sem nenhum campo preenchido foi salvo"
	end
	
	test "Verifica se o cliente com CPF e nome eh salvo" do
	  cliente = Cliente.new
	  cliente.CPF ='11122233311'
	  cliente.Nome ='Cliente'
	  assert !cliente.save, "Cliente com campos preenchidos corretamente nao foi salvo"
	end
	
	test "Verifica se os clientes sem CPF eh salvo" do
	  cliente = Cliente.new
	  cliente.CPF ="11122233311"
	  assert !cliente.save, "Cliente sem nenhum campo preenchido foi salvo"
	end
end

