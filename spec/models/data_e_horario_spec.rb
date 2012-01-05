# encoding: UTF-8         

require 'spec_helper'

describe DataEHorario do
  context "Dada uma data válida e um horário em formato e texto" do
    data_e_horario = DataEHorario.new(Date.today, "11:30")
    it "to_s deve retornar algo tipo dd/mm/yy HH:MM" do
      data_e_horario.to_s.should == [Date.today.strftime("%d/%m/%y"), "11:30"].join(" ")
    end
  end
  
  it "horarios_disponiveis deve retornar uma Array de horários" do
    DataEHorario.horarios_disponiveis.should be_kind_of(Array)
    DataEHorario.horarios_disponiveis.should_not be_empty
    DataEHorario.horarios_disponiveis.each {|h| h.should match(/[0-2][0-9]:[0-5][0-9]/)}
  end
end