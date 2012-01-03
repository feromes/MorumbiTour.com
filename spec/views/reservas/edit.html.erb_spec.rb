require 'spec_helper'

describe "reserva/edit.html.erb" do
  before(:each) do
    @reserva = assign(:reserva, stub_model(Reserva,
      :nome => "MyString",
      :email => "MyString",
      :telefone => "MyString",
      :quantidade_de_pessoas => 1,
      :horario_desejado => "MyString",
      :observacoes_e_pedidos_especiais => "MyString"
    ))
  end

  it "renders the edit reserva form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reservas_path(@reserva), :method => "post" do
      assert_select "input#reserva_nome", :name => "reserva[nome]"
      assert_select "input#reserva_email", :name => "reserva[email]"
      assert_select "input#reserva_telefone", :name => "reserva[telefone]"
      assert_select "input#reserva_quantidade_de_pessoas", :name => "reserva[quantidade_de_pessoas]"
      assert_select "input#reserva_horario_desejado", :name => "reserva[horario_desejado]"
      assert_select "input#reserva_observacoes_e_pedidos_especiais", :name => "reserva[observacoes_e_pedidos_especiais]"
    end
  end
end
