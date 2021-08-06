class CreateAtivos < ActiveRecord::Migration[6.1]
  def change
    create_table :ativos do |t|
      t.belongs_to :especificacao_ativo, null: false, foreign_key: true
      t.string :numero_patrimonial
      t.belongs_to :unidade, null: true, foreign_key: true

      t.datetime :deleted_at, index: true # For Paranoia

      t.timestamps
    end
  end
end
