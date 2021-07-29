class CreateServicos < ActiveRecord::Migration[6.1]
  def change
    create_table :servicos do |t|
      t.string :nome, null: false
      t.text :descricao

      t.timestamps
    end
  end
end
