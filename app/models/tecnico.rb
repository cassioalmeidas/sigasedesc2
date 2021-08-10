class Tecnico < ApplicationRecord
  acts_as_paranoid
  has_paper_trail
  validates :nome, presence: true, uniqueness: true
  has_many :manutencao_tecnicos, dependent: :restrict_with_error
  has_many :manutencoes_recebidas, dependent: :restrict_with_error, class_name: 'Manutencao', foreign_key: 'tecnico_recebeu_id'
  has_many :manutencoes_realizadas, through: :manutencao_tecnicos

  def to_s
    nome
  end

end
