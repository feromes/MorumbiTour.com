require 'spec_helper'

describe Reserva do
  it { should validate_presence_of(:nome)}    
  it { should validate_presence_of(:quantidade_de_pessoas)} 
  it { should validate_presence_of(:dia_desejado)} 
  it { should validate_presence_of(:horario_desejado)}
end
