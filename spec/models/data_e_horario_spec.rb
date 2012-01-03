# encoding: UTF-8         

require 'spec_helper'

describe DataEHorario do
  context "Dada uma data válida e um horário em formato e texto" do
    data_e_horario = DataEHorario.new(Date.today, "11:30")
    it "to_s deve retornar algo tipo dd/mm/yy HH:MM" do
      data_e_horario.to_s.should == [Date.today.strftime("%d/%m/%y"), "11:30"].join(" ")
    end
  end
end