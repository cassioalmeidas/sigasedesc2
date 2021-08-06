class ManutencaoTecnico < ApplicationRecord
  acts_as_paranoid
  has_paper_trail
  belongs_to :manutencao
  belongs_to :tecnico
end
