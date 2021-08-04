class CreateManutencaoTecnicos < ActiveRecord::Migration[6.1]
  def change
    create_table :manutencao_tecnicos do |t|
      t.belongs_to :manutencao, null: false, foreign_key: true
      t.belongs_to :tecnico, null: false, foreign_key: true

      t.timestamps
    end
  end
end
