class CreateEspecificacaoAtivos < ActiveRecord::Migration[6.1]
  def change
    create_table :especificacao_ativos do |t|
      t.string :nome, null: false

      t.datetime :deleted_at, index: true # For Paranoia

      t.timestamps
    end
  end
end
