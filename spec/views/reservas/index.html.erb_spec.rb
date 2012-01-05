# encoding: UTF-8
require 'spec_helper'

describe "reservas/index.html.erb" do
  before(:each) do
    assign(:reservas_por_saida, {[Date.today, "11:30"] => 15, [Date.today, "13:30"] => 6 })
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
     rendered.should =~ /[0-3][0-9]\/[0-1][0-9]\/[0-9][0-9]\s11\:30\s\(15\)/
     rendered.should =~ /[0-3][0-9]\/[0-1][0-9]\/[0-9][0-9]\s13\:30\s\(6\)/ 
  end 
end
