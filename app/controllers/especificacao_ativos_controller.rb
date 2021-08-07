class EspecificacaoAtivosController < ApplicationController
  before_action :set_especificacao_ativo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pagy, @especificacao_ativos = pagy(EspecificacaoAtivo.order('created_at DESC'))
    respond_with(@especificacao_ativos)
  end

  def show
    respond_with(@especificacao_ativo)
  end

  def new
    @especificacao_ativo = EspecificacaoAtivo.new
    respond_with(@especificacao_ativo)
  end

  def edit
  end

  def create
    @especificacao_ativo = EspecificacaoAtivo.new(especificacao_ativo_params)
    @especificacao_ativo.save
    respond_with(@especificacao_ativo, location: -> { especificacao_ativos_url })
  end

  def update
    @especificacao_ativo.update(especificacao_ativo_params)
    respond_with(@especificacao_ativo, location: -> { especificacao_ativos_url })
  end

  def destroy
    @especificacao_ativo.destroy
    respond_with(@especificacao_ativo, location: -> { especificacao_ativos_url })
  end

  private
    def set_especificacao_ativo
      @especificacao_ativo = EspecificacaoAtivo.find(params[:id])
    end

    def especificacao_ativo_params
      params.require(:especificacao_ativo).permit(:nome)
    end
end
