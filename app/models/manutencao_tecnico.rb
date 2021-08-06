class ManutencaoTecnico < ApplicationRecord
  acts_as_paranoid
  belongs_to :manutencao
  belongs_to :tecnico
end
