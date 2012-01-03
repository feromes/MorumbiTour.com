class DataEHorario
  attr_accessor :data_e_hora
  
  def initialize(data, horario)
    @data_e_hora = DateTime.parse("#{data.to_s} #{horario}")
  end
  
  def to_s
    @data_e_hora.strftime("%d/%m/%y %H:%M")
  end
  
end