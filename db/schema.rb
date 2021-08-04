# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_03_141535) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ativos", force: :cascade do |t|
    t.bigint "especificacao_ativo_id", null: false
    t.string "numero_patrimonial"
    t.bigint "unidade_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["especificacao_ativo_id"], name: "index_ativos_on_especificacao_ativo_id"
    t.index ["unidade_id"], name: "index_ativos_on_unidade_id"
  end

  create_table "especificacao_ativos", force: :cascade do |t|
    t.string "nome", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "manutencao_tecnicos", force: :cascade do |t|
    t.bigint "manutencao_id", null: false
    t.bigint "tecnico_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["manutencao_id"], name: "index_manutencao_tecnicos_on_manutencao_id"
    t.index ["tecnico_id"], name: "index_manutencao_tecnicos_on_tecnico_id"
  end

  create_table "manutencoes", force: :cascade do |t|
    t.string "situacao"
    t.bigint "ativo_id", null: false
    t.bigint "tecnico_recebeu_id", null: false
    t.date "data_entrada"
    t.text "problemas_apresentados"
    t.text "diagnosticos"
    t.text "procedimentos_realizados"
    t.date "data_conclusao"
    t.date "data_entrega"
    t.string "responsavel_recebimento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ativo_id"], name: "index_manutencoes_on_ativo_id"
    t.index ["tecnico_recebeu_id"], name: "index_manutencoes_on_tecnico_recebeu_id"
  end

  create_table "servicos", force: :cascade do |t|
    t.string "nome", null: false
    t.text "descricao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tecnicos", force: :cascade do |t|
    t.string "nome", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "unidades", force: :cascade do |t|
    t.string "nome", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  add_foreign_key "ativos", "especificacao_ativos"
  add_foreign_key "ativos", "unidades"
  add_foreign_key "manutencao_tecnicos", "manutencoes"
  add_foreign_key "manutencao_tecnicos", "tecnicos"
  add_foreign_key "manutencoes", "ativos"
  add_foreign_key "manutencoes", "tecnicos", column: "tecnico_recebeu_id"
end
