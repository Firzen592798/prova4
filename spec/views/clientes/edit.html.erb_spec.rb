require 'spec_helper'

describe "clientes/edit" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :Nome => "MyString",
      :CPF => "MyString",
      :Email => "MyString",
      :Endereco => "MyString",
      :Telefone => "MyString"
    ))
  end

  it "renders the edit cliente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cliente_path(@cliente), "post" do
      assert_select "input#cliente_Nome[name=?]", "cliente[Nome]"
      assert_select "input#cliente_CPF[name=?]", "cliente[CPF]"
      assert_select "input#cliente_Email[name=?]", "cliente[Email]"
      assert_select "input#cliente_Endereco[name=?]", "cliente[Endereco]"
      assert_select "input#cliente_Telefone[name=?]", "cliente[Telefone]"
    end
  end
end
