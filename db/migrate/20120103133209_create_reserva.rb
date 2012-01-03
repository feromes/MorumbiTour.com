class CreateReserva < ActiveRecord::Migration
  def change
    create_table :reserva do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.integer :quantidade_de_pessoas
      t.date :dia_desejado
      t.string :horario_desejado
      t.string :observacoes_e_pedidos_especiais

      t.timestamps
    end
  end
end
