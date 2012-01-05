# encoding: UTF-8
require 'spec_helper'

describe "reservas/edit.html.erb" do
  before(:each) do
    @reserva = assign(:reserva, stub_model(Reserva,
      :nome => "João da Silva",
      :email => "joao@exemple.com",
      :telefone => "11 99999999",
      :quantidade_de_pessoas => 4,
      :horario_desejado => "MyString",
      :observacoes_e_pedidos_especiais => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    ))
  end

  it "renders the edit reserva form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reservas_path(@reserva), :method => "post" do
      assert_select "input#reserva_nome", :name => "reserva[nome]"
      assert_select "input#reserva_email", :name => "reserva[email]"
      assert_select "input#reserva_telefone", :name => "reserva[telefone]"
      assert_select "input#reserva_quantidade_de_pessoas", :name => "reserva[quantidade_de_pessoas]"
      assert_select "select#reserva_horario_desejado", :name => "reserva[horario_desejado]"
      assert_select "input#reserva_observacoes_e_pedidos_especiais", :name => "reserva[observacoes_e_pedidos_especiais]"
    end
  end
end
