require 'test_helper'

class ClienteTest < ActiveSupport::TestCase

	test "Verifica se o cliente com dados corretamente validados sao de fato inseridos" do
	  cliente = Cliente.new
	  cliente.Nome ='Cliente'
	  cliente.CPF ='11122233311'
	  cliente.DataNascimento ='14/12/1989'
	  cliente.Email ='taaa@bqp.net'
	  cliente.Endereco ='Rua dos magos'
	  cliente.Telefone ='90908989'
	  assert cliente.save, "Cliente deveria ser salvo mas nao foi"
	end

	test "Verifica se os clientes sem nome eh salvo" do
	  cliente = Cliente.new
	  cliente.CPF ='11122233311'
	  cliente.DataNascimento ='14/12/1989'
	  cliente.Email ='taaa@bqp.net'
	  cliente.Endereco ='Rua dos magos'
	  cliente.Telefone ='90908989'
	  assert !cliente.save, "Cliente sem nome foi salvo"
	end
	
	test "Verifica se os clientes com nome cheio de numeros eh salvo" do
	  cliente = Cliente.new
	  cliente.Nome ='d12df23f321f32f32'
	  cliente.CPF ='11122233311'
	  cliente.DataNascimento ='14/12/1989'
	  cliente.Email ='taaa@bqp.net'
	  cliente.Endereco ='Rua dos magos'
	  cliente.Telefone ='90908989'
	  assert !cliente.save, "Cliente com nome invalido foi salvo"
	end
	
	test "Verifica se os clientes sem CPF eh salvo" do
	  cliente = Cliente.new
	  cliente.Nome ='Cliente'
	  cliente.DataNascimento ='14/12/1989'
	  cliente.Email ='taaa@bqp.net'
	  cliente.Endereco ='Rua dos magos'
	  cliente.Telefone ='90908989'
	  assert !cliente.save, "Cliente sem cpf foi salvo"
	end	
	
	test "Verifica se o cliente com email em formato incorreto, sem ponto, eh salvo" do
	  cliente = Cliente.new
	  cliente.Nome ='Cliente'
	  cliente.CPF ='11122233311'
	  cliente.DataNascimento ='14/12/1989'
	  cliente.Email ='taaa@bqp'
	  cliente.Endereco ='Rua dos magos'
	  cliente.Telefone ='90908989'
	  assert !cliente.save, "Cliente inserido com email sem ponto"
	end
	
	test "Verifica se o cliente com email em formato incorreto, sem arroba, eh salvo" do
	  cliente = Cliente.new
	  cliente.Nome ='Cliente'
	  cliente.CPF ='11122233311'
	  cliente.DataNascimento ='14/12/1989'
	  cliente.Email ='taaa.bqp'
	  cliente.Endereco ='Rua dos magos'
	  cliente.Telefone ='90908989'
	  assert !cliente.save, "Cliente inserido com email sem arroba"
	end
	

	
	
end

