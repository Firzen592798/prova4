require 'test_helper'

class ClienteTest < ActiveSupport::TestCase
	test "Verifica se os clientes sem nome sao salvos" do
	  cli = Cliente.new
	  assert !cli.save
	end
end

