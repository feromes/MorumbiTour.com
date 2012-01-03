require 'spec_helper'

describe "reservas/show.html.erb" do
  before(:each) do
    @reserva = assign(:reserva, stub_model(Reserva,
      :nome => "Nome",
      :email => "Email",
      :telefone => "Telefone",
      :quantidade_de_pessoas => 1,
      :horario_desejado => "Horario Desejado",
      :observacoes_e_pedidos_especiais => "Observacoes E Pedidos Especiais"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telefone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Horario Desejado/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Observacoes E Pedidos Especiais/)
  end
end
