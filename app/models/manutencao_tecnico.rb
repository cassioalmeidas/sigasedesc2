class ManutencaoTecnico < ApplicationRecord
  belongs_to :manutencao
  belongs_to :tecnico
end
