class EspecificacaoAtivo < ApplicationRecord
  has_many :ativo, dependent: :restrict_with_error
  validates :nome, presence: true
  
  def to_s
    nome
  end
end
