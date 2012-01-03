# encoding: UTF-8         

require 'spec_helper'

describe Reserva do
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
  
end
