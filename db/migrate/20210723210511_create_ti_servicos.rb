class CreateTiServicos < ActiveRecord::Migration[6.1]
  def change
    create_table :ti_servicos do |t|
      t.string :nome, null: false
      t.text :descricao

      t.timestamps
    end
  end
end
