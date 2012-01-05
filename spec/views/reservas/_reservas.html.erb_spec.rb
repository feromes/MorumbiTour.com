# encoding: UTF-8
require 'spec_helper'

describe "reservas/_reservas.html.erb" do
  before(:each) do
    assign(:reservas, [
      stub_model(Reserva,
        :nome => "Nome 1",
        :email => "Email 1",
        :telefone => "Telefone",
        :quantidade_de_pessoas => 1,
        :dia_desejado => Date.today,
        :horario_desejado => "11:30",
        :observacoes_e_pedidos_especiais => "Observacoes E Pedidos Especiais"
      ),
      stub_model(Reserva,
        :nome => "Nome 2",
        :email => "Email 2",
        :telefone => "Telefone",
        :quantidade_de_pessoas => 2,
        :dia_desejado => Date.today,
        :horario_desejado => "11:30",
        :observacoes_e_pedidos_especiais => "Observacoes E Pedidos Especiais"
      )
    ])
    assign(:reservas_por_saida, {[Date.today, "11:30"] => 15, [Date.today, "13:30"] => 6 })
  end
  
  it "renderizar um título com a data de hoje e horario as 11:30" do
     render
     rendered.should =~ /Reservas do dia [0-3][0-9]\/[0-1][0-9]\/[0-9][0-9]\s11\:30/
  end
  
  it "ter uma lista com nomes" do
     render
     rendered.should =~ /Nome 1/
     rendered.should =~ /Nome 2/
  end  
  
  it "Totalizar a quantidade de passageiros" do
    render
    assert_select "table" do
      assert_select "tr.last" do 
        assert_select "td#label_total_passageiros", {text: "Total de passageiros"}
        assert_select "td#total_passageiros", {text: "3"}
      end 
    end
  end 
end