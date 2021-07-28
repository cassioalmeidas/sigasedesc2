class Ti::ServicosController < ApplicationController
  before_action :set_ti_servico, only: %i[ show edit update destroy ]
  respond_to :js, only: :show

  def index
    @ti_servicos = Ti::Servico.all
    respond_with(@ti_servicos)
  end


  def show
    respond_with(@ti_servico)
  end


  def new
    @ti_servico = Ti::Servico.new
    respond_with(@ti_servico)
  end


  def edit
  end


  def create
    @ti_servico = Ti::Servico.new(ti_servico_params)
    @ti_servico.save
    respond_with @ti_servico, location: -> { ti_servicos_url }
  end


  def update
    @ti_servico.update(ti_servico_params)
    respond_with @ti_servico, location: -> { ti_servicos_url }
  end


  def destroy
    @ti_servico.destroy
    respond_with @ti_servico
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ti_servico
      @ti_servico = Ti::Servico.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ti_servico_params
      params.require(:ti_servico).permit(:nome, :descricao)
    end
end
