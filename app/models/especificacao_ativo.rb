class EspecificacaoAtivo < ApplicationRecord
  acts_as_paranoid
  has_many :ativo, dependent: :restrict_with_error
  validates :nome, presence: true
  
  def to_s
    nome
  end
end
