class Tecnico < ApplicationRecord
  acts_as_paranoid
  validates :nome, presence: true, uniqueness: true
  has_many :manutencao_tecnicos, dependent: :restrict_with_error
  has_many :manutencoes_recebidas, class_name: 'Manutencao'
  has_many :manutencoes_realizadas, through: :manutencao_tecnicos

  def to_s
    nome
  end

end
