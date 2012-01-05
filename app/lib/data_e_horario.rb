class DataEHorario
  attr_accessor :data_e_hora
  
  def initialize(data, horario)
    @data_e_hora = DateTime.parse("#{data.to_s} #{horario}")
  end
  
  def to_s
    @data_e_hora.strftime("%d/%m/%y %H:%M")
  end
  
  def self.horarios_disponiveis
    ["10:00", "10:30", "11:00", "11:30", "12:00", "12:30", "13:00", "13:30", "14:00", "14:30", "15:00", "15:30", "16:00", "18:00", "20:00"]
  end
  
end