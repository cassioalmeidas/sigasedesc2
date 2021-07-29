class UnidadesController < ApplicationController
  before_action :set_unidade, only: [:show, :edit, :update, :destroy]

  respond_to :html
  respond_to :js, only: [:show]

  def index
    @unidades = Unidade.all
    respond_with(@unidades)
  end

  def show
    respond_with(@unidade)
  end

  def new
    @unidade = Unidade.new
    respond_with(@unidade)
  end

  def edit
  end

  def create
    @unidade = Unidade.new(unidade_params)
    @unidade.save
    respond_with(@unidade)
  end

  def update
    @unidade.update(unidade_params)
    respond_with(@unidade)
  end

  def destroy
    @unidade.destroy
    respond_with(@unidade)
  end

  private
    def set_unidade
      @unidade = Unidade.find(params[:id])
    end

    def unidade_params
      params.require(:unidade).permit(:nome)
    end
end
