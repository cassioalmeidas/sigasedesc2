class Ti::Tecnico < ApplicationRecord
  validates :nome, presence: true, uniqueness: true
end
