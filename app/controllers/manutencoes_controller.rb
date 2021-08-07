class ManutencoesController < ApplicationController
  before_action :set_manutencao, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pagy, @manutencoes = pagy(Manutencao.order('created_at DESC'))
    respond_with(@manutencoes)
  end

  def show
    respond_with(@manutencao)
  end

  def new
    @manutencao = Manutencao.new
    @manutencao.build_ativo
    respond_with(@manutencao)
  end

  def edit
  end

  def create
    @manutencao = Manutencao.new(manutencao_params)
    @manutencao.save
    respond_with(@manutencao, location: -> { manutencoes_url })
  end

  def update
    @manutencao.update(manutencao_params)
    respond_with(@manutencao, location: -> { manutencoes_url })
  end

  def destroy
    @manutencao.destroy
    respond_with(@manutencao, location: -> { manutencoes_url })
  end

  private
    def set_manutencao
      @manutencao = Manutencao.find(params[:id])
    end

    def manutencao_params
      params.require(:manutencao).permit(
        :situacao, 
        :ativo_id, 
        :tecnico_recebeu_id, 
        :data_conclusao, 
        :data_entrega, 
        :responsavel_recebimento, 
        :problemas_apresentados, 
        :diagnosticos, 
        :procedimentos_realizados, 
        :data_entrada,
        tecnicos_realizaram_ids: [],
        ativo_attributes: [
          :id, 
          :unidade, 
          :nome, 
          :numero_patrimonial, 
          :unidade_id, 
          :especificacao_ativo_id
        ]
      )
    end
    
end
