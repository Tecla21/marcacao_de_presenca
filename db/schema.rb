# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20211127112418) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "estudantes", force: :cascade do |t|
    t.string "nome"
    t.string "telemovel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estudantes_na_turma", force: :cascade do |t|
    t.bigint "estudante_id"
    t.bigint "turma_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estudante_id"], name: "index_estudantes_na_turma_on_estudante_id"
    t.index ["turma_id"], name: "index_estudantes_na_turma_on_turma_id"
  end

  create_table "turmas", force: :cascade do |t|
    t.string "descricao"
    t.bigint "utilizador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["utilizador_id"], name: "index_turmas_on_utilizador_id"
  end

  create_table "utilizadores", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_utilizadores_on_email", unique: true
    t.index ["reset_password_token"], name: "index_utilizadores_on_reset_password_token", unique: true
  end

  add_foreign_key "estudantes_na_turma", "estudantes"
  add_foreign_key "estudantes_na_turma", "turmas"
  add_foreign_key "turmas", "utilizadores"
end
