class ReservasController < ApplicationController
  
  before_filter :authenticate_user!
  
  # GET /reservas
  # GET /reservas.json
  def index
    @reservas_por_saida = Reserva.proximas_saidas
    @reservas = Reserva.find(:all, :conditions => {dia_desejado: params[:dia_desejado], horario_desejado: params[:horario_desejado]}) unless params[:dia_desejado].nil?
                            
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reservas }
    end
  end

  # GET /reservas/1
  # GET /reservas/1.json
  def show
    @reserva = Reserva.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reserva }
    end
  end

  # GET /reservas/new
  # GET /reservas/new.json
  def new
    @reserva = Reserva.new(dia_desejado: params[:dia_desejado],
                           horario_desejado: params[:horario_desejado])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reserva }
    end
  end

  # GET /reservas/1/edit
  def edit
    @reserva = Reserva.find(params[:id])
  end

  # POST /reservas
  # POST /reservas.json
  def create
    @reserva = Reserva.new(params[:reserva])

    respond_to do |format|
      if @reserva.save
        format.html { redirect_to @reserva, notice: 'Reserva was successfully created.' }
        format.json { render json: @reserva, status: :created, location: @reserva }
      else
        format.html { render action: "new" }
        format.json { render json: @reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reservas/1
  # PUT /reservas/1.json
  def update
    @reserva = Reserva.find(params[:id])

    respond_to do |format|
      if @reserva.update_attributes(params[:reserva])
        format.html { redirect_to @reserva, notice: 'Reserva was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservas/1
  # DELETE /reservas/1.json
  def destroy
    @reserva = Reserva.find(params[:id])
    @reserva.destroy

    respond_to do |format|
      format.html { redirect_to reservas_url }
      format.json { head :no_content }
    end
  end
end
