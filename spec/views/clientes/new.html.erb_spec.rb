require 'spec_helper'

describe "clientes/new" do
  before(:each) do
    assign(:cliente, stub_model(Cliente,
      :Nome => "MyString",
      :CPF => "MyString",
      :Email => "MyString",
      :Endereco => "MyString",
      :Telefone => "MyString"
    ).as_new_record)
  end

  it "renders new cliente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", clientes_path, "post" do
      assert_select "input#cliente_Nome[name=?]", "cliente[Nome]"
      assert_select "input#cliente_CPF[name=?]", "cliente[CPF]"
      assert_select "input#cliente_Email[name=?]", "cliente[Email]"
      assert_select "input#cliente_Endereco[name=?]", "cliente[Endereco]"
      assert_select "input#cliente_Telefone[name=?]", "cliente[Telefone]"
    end
  end
end
