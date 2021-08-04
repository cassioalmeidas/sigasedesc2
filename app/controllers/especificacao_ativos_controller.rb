class EspecificacaoAtivosController < ApplicationController
  before_action :set_especificacao_ativo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @especificacao_ativos = EspecificacaoAtivo.all
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
    respond_with(@especificacao_ativo)
  end

  def update
    @especificacao_ativo.update(especificacao_ativo_params)
    respond_with(@especificacao_ativo)
  end

  def destroy
    @especificacao_ativo.destroy
    respond_with(@especificacao_ativo)
  end

  private
    def set_especificacao_ativo
      @especificacao_ativo = EspecificacaoAtivo.find(params[:id])
    end

    def especificacao_ativo_params
      params.require(:especificacao_ativo).permit(:nome)
    end
end
