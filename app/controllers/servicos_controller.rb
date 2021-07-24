class ServicosController < ApplicationController
  before_action :set_servico, only: %i[ show edit update destroy ]

  # GET /servicos or /servicos.json
  def index
    @servicos = Servico.all
  end

  # GET /servicos/1 or /servicos/1.json
  def show
  end

  # GET /servicos/new
  def new
    @servico = Servico.new
  end

  # GET /servicos/1/edit
  def edit
  end

  # POST /servicos or /servicos.json
  def create
    @servico = Servico.new(servico_params)
    respond_with @servico, location: -> { servicos_url }
  end

  # PATCH/PUT /servicos/1 or /servicos/1.json
  def update
    @servico.update(servico_params)
    respond_with @servico, location: -> { servicos_url }
  end

  # DELETE /servicos/1 or /servicos/1.json
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
