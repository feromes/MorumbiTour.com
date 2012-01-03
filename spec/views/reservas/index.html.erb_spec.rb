require 'spec_helper'

describe "reserva/index.html.erb" do
  before(:each) do
    assign(:reserva, [
      stub_model(Reserva,
        :nome => "Nome",
        :email => "Email",
        :telefone => "Telefone",
        :quantidade_de_pessoas => 1,
        :horario_desejado => "Horario Desejado",
        :observacoes_e_pedidos_especiais => "Observacoes E Pedidos Especiais"
      ),
      stub_model(Reserva,
        :nome => "Nome",
        :email => "Email",
        :telefone => "Telefone",
        :quantidade_de_pessoas => 1,
        :horario_desejado => "Horario Desejado",
        :observacoes_e_pedidos_especiais => "Observacoes E Pedidos Especiais"
      )
    ])
  end

  it "renders a list of reserva" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Horario Desejado".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Observacoes E Pedidos Especiais".to_s, :count => 2
  end
end
