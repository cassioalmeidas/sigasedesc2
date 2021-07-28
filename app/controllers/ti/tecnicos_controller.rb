class Ti::TecnicosController < ApplicationController
  before_action :set_ti_tecnico, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @ti_tecnicos = Ti::Tecnico.all
    respond_with(@ti_tecnicos)
  end

  def show
    respond_with(@ti_tecnico)
  end

  def new
    @ti_tecnico = Ti::Tecnico.new
    respond_with(@ti_tecnico)
  end

  def edit
  end

  def create
    @ti_tecnico = Ti::Tecnico.new(ti_tecnico_params)
    @ti_tecnico.save
    respond_with(@ti_tecnico)
  end

  def update
    @ti_tecnico.update(ti_tecnico_params)
    respond_with(@ti_tecnico)
  end

  def destroy
    @ti_tecnico.destroy
    respond_with(@ti_tecnico)
  end

  private
    def set_ti_tecnico
      @ti_tecnico = Ti::Tecnico.find(params[:id])
    end

    def ti_tecnico_params
      params.require(:ti_tecnico).permit(:nome)
    end
end
