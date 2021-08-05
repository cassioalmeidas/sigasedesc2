class Unidade < ApplicationRecord
  has_many :ativos, dependent: :restrict_with_error
  validates :nome, presence: true
  def to_s
    nome
  end
end
