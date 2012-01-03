# encoding: UTF-8         

require 'spec_helper'

describe Reserva do
  
  Reserva.delete_all
  
  context "Dado uma reserva válida, com nome, email, etc ..." do
    reserva_valida = Reserva.new(nome: "João da Silva",
                                 email: "joao@exempla.com",
                                 quantidade_de_pessoas: 5,
                                 dia_desejado: Date.today,
                                 horario_desejado: "11:30")
    it "Não devem ser apresentadas mensagens de erro" do
      reserva_valida.errors.messages.should be_empty
    end
  end
  
  context "Dado 5 reservas para hoje, sendo 3 para as 11:30 e duas para as 13:30" do
    3.times do
      Reserva.create(nome: "n", email: "nome@me.com", quantidade_de_pessoas: 5, dia_desejado: Date.today, horario_desejado: "11:30")
    end
    2.times do
      Reserva.create(nome: "n", email: "nome@me.com", quantidade_de_pessoas: 3, dia_desejado: Date.today, horario_desejado: "13:30")
    end 
    it "deve poder ser apresentadas dividada em um hash de data e subdividade em horários" do
      Reserva.find(:all).should have(5).items 
      Reserva.proximas_saidas.should eq({[Date.today, "11:30"] => 15, [Date.today, "13:30"] => 6})
    end
  end 
  
end
