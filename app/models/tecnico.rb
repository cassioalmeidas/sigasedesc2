class Tecnico < ApplicationRecord
  validates :nome, presence: true, uniqueness: true
  has_many :manutencao_tecnico
  has_many :manutencoes_realizadas, through: :manutencao_tecnicos, source: :manutencao

  def to_s
    nome
  end
end
