# encoding: UTF-8
require 'spec_helper'

describe "reservas/index.html.erb" do
  before(:each) do
    assign(:reservas, [
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
    assign(:reservas_por_saida, {[Date.today, "11:30"] => 15, [Date.today, "13:30"] => 6 })
  end

  it "renders a list of reservas" do
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
  
  it "renderizar uma opção para fazer nova reserva" do
     render
     rendered.should =~ /Nova Reserva/ 
  end
  
  it "renderizar proximas datas de Tours a serem realizados" do
     render
     rendered.should =~ /Próximas Saídas/
  end  
  
  it "renderizar as próximas saídas separadas por data e horário" do
     render
     rendered.should =~ /(15)/
     rendered.should =~ /(6)/
  end 
end
