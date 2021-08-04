class CreateManutencoes < ActiveRecord::Migration[6.1]
  def change
    create_table :manutencoes do |t|
      t.string :situacao
      t.belongs_to :ativo, null: false, foreign_key: true
      t.belongs_to :tecnico_recebeu, null: false, foreign_key: { to_table: :tecnicos }
      t.date :data_entrada
      t.text :problemas_apresentados
      t.text :diagnosticos
      t.text :procedimentos_realizados
      t.date :data_conclusao
      t.date :data_entrega
      t.string :responsavel_recebimento
      t.timestamps
    end
  end
end
