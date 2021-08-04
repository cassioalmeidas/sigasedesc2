class Manutencao < ApplicationRecord
  include AASM
  validates :data_entrada, presence: true
  belongs_to :ativo
  belongs_to :tecnico_recebeu, class_name: "Tecnico"
  has_many :manutencao_tecnico, dependent: :destroy
  has_many :tecnicos_realizaram, through: :manutencao_tecnico, source: :tecnico
  accepts_nested_attributes_for :ativo

  aasm column: :situacao do
    state :em_andamento, initial: true
    state :concluido
    state :aguardando_peca
    state :enviado_suporte_loja
    state :enviado_garantia
    state :nao_realizado
    state :entregue
  end

  def ativo_attributes=(hash)
    self.ativo = Ativo.find_or_create_by(
      numero_patrimonial: hash['numero_patrimonial'],
      especificacao_ativo_id: hash['especificacao_ativo_id'],
      unidade_id: hash['unidade_id']
    )
  end

end
