class CreateTiTecnicos < ActiveRecord::Migration[6.1]
  def change
    create_table :ti_tecnicos do |t|
      t.string :nome, null: false

      t.timestamps
    end
  end
end
