class Ativo < ApplicationRecord
  belongs_to :unidade, optional: true
  validates :nome, presence: true
end
