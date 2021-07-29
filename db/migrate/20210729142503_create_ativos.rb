class CreateAtivos < ActiveRecord::Migration[6.1]
  def change
    create_table :ativos do |t|
      t.string :nome
      t.string :numero_patrimonial
      t.belongs_to :unidade, null: true, foreign_key: true

      t.timestamps
    end
  end
end
