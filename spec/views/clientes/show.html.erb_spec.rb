require 'spec_helper'

describe "clientes/show" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :Nome => "Nome",
      :CPF => "Cpf",
      :Email => "Email",
      :Endereco => "Endereco",
      :Telefone => "Telefone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Cpf/)
    rendered.should match(/Email/)
    rendered.should match(/Endereco/)
    rendered.should match(/Telefone/)
  end
end
