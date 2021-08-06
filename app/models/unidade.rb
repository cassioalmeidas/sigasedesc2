class Unidade < ApplicationRecord
  acts_as_paranoid
  has_paper_trail
  has_many :ativos, dependent: :restrict_with_error
  validates :nome, presence: true
  def to_s
    nome
  end
end
