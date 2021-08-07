class ServicosController < ApplicationController
  before_action :set_servico, only: %i[ show edit update destroy ]
  respond_to :js, only: :show

  def index
    @pagy, @servicos = pagy(Servico.order('created_at DESC'))
    respond_with(@servicos)
  end


  def show
    respond_with(@servico)
  end


  def new
    @servico = Servico.new
    respond_with(@servico)
  end


  def edit
  end


  def create
    @servico = Servico.new(servico_params)
    @servico.save
    respond_with @servico, location: -> { servicos_url }
  end


  def update
    @servico.update(servico_params)
    respond_with @servico, location: -> { servicos_url }
  end


  def destroy
    @servico.destroy
    respond_with @servico
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servico
      @servico = Servico.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def servico_params
      params.require(:servico).permit(:nome, :descricao)
    end
end
