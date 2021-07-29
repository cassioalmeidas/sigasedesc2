class AtivosController < ApplicationController
  before_action :set_ativo, only: [:show, :edit, :update, :destroy]

  respond_to :html
  respond_to :js, only: [:show]

  def index
    @ativos = Ativo.all
    respond_with(@ativos)
  end

  def show
    respond_with(@ativo)
  end

  def new
    @ativo = Ativo.new
    respond_with(@ativo)
  end

  def edit
  end

  def create
    @ativo = Ativo.new(ativo_params)
    @ativo.save
    respond_with(@ativo, location:-> { ativos_url })
  end

  def update
    @ativo.update(ativo_params)
    respond_with(@ativo, location:-> { ativos_url })
  end

  def destroy
    @ativo.destroy
    respond_with(@ativo, location:-> { ativos_url })
  end

  private
    def set_ativo
      @ativo = Ativo.find(params[:id])
    end

    def ativo_params
      params.require(:ativo).permit(:nome, :numero_patrimonial, :unidade_id)
    end
end
