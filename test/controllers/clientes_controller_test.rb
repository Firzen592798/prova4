require 'test_helper'

class ClientesControllerTest < ActionController::TestCase
  setup do
    @cliente = clientes(:one)
  end  
  
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  #test "Teste de criacao" do
  #  assert_difference('Cliente.count') do
	# 	cliente :create, 
	#	cliente:{Nome: 'Nome', CPF: '12312312312', DataNascimento: @cliente.DataNascimento, Email: 'cli@ba.com', Endereco: 'rua a', Telefone: '11112222' }
    #end
	
    #assert_redirected_to cliente_path(assigns(:z))
  #end
  
  test "teste show cliente" do
    get :show, id: @cliente
    assert_response :success
  end

  test "teste show edit cliente" do
    get :edit, id: @cliente
    assert_response :success
  end

  test "teste update cliente" do
    patch :update, id: @cliente, cliente: {Nome: @cliente.Nome, CPF: @cliente.CPF, DataNascimento: @cliente.DataNascimento, Email: @cliente.Email, Endereco: @cliente.Endereco, Telefone: @cliente.Telefone }
    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "teste delete cliente" do
    assert_difference('Cliente.count', -1) do
      delete :destroy, id: @cliente
    end
    assert_redirected_to clientes_path
  end

end
