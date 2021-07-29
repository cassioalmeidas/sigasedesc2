class Tecnico < ApplicationRecord
  validates :nome, presence: true, uniqueness: true
end
