class EspecificacaoAtivo < ApplicationRecord
  has_many :ativo

  def to_s
    nome
  end
end
