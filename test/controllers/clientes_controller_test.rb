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

  test "Teste de criação de novo cliente" do
    assert_difference('cliente.count') do
      cliente :create, cliente: { Nome: @cliente.Nome, CPF: @cliente.CPF, DataNascimento: @cliente.DataNascimento, Email: @cliente.Email, Endereco: @cliente.Endereco, Telefone: @cliente.Telefone }
    end

    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should show cliente" do
    get :show, id: @cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente
    assert_response :success
  end

  test "should update cliente" do
    patch :update, id: @cliente, cliente: { conteudo: @cliente.conteudo, titulo: @cliente.titulo }
    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should destroy cliente" do
    assert_difference('cliente.count', -1) do
      delete :destroy, id: @cliente
    end

    assert_redirected_to clientes_path
  end
end
