# encoding: UTF-8
class Reserva < ActiveRecord::Base
  validates_presence_of [:nome, :quantidade_de_pessoas, :dia_desejado, :horario_desejado], :on => :create, :message => "não deve ficar em branco"
end
