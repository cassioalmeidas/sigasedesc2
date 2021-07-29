class TecnicosController < ApplicationController
  before_action :set_tecnico, only: [:show, :edit, :update, :destroy]
  respond_to :js, only: :show
  respond_to :html

  def index
    @tecnicos = Tecnico.all
    respond_with(@tecnicos)
  end

  def show
    respond_with(@tecnico)
  end

  def new
    @tecnico = Tecnico.new
    respond_with(@tecnico)
  end

  def edit
  end

  def create
    @tecnico = Tecnico.new(tecnico_params)
    @tecnico.save
    respond_with(@tecnico)
  end

  def update
    @tecnico.update(tecnico_params)
    respond_with(@tecnico)
  end

  def destroy
    @tecnico.destroy
    respond_with(@tecnico)
  end

  private
    def set_tecnico
      @tecnico = Tecnico.find(params[:id])
    end

    def tecnico_params
      params.require(:tecnico).permit(:nome)
    end
end
