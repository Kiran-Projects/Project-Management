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

ActiveRecord::Schema[7.0].define(version: 2023_01_13_160434) do
  create_table "clients", force: :cascade do |t|
    t.string "name", null: false
    t.string "address"
    t.string "contact"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.string "phone"
    t.integer "contact_type"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_contacts_on_client_id"
  end

  create_table "project_work_parties", force: :cascade do |t|
    t.integer "bill_status", default: 0, null: false
    t.integer "payment_status", default: 0, null: false
    t.decimal "bill_amount", precision: 10, scale: 2, default: "0.0", null: false
    t.integer "project_id", null: false
    t.integer "work_party_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_work_parties_on_project_id"
    t.index ["work_party_id"], name: "index_project_work_parties_on_work_party_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name", null: false
    t.string "location", null: false
    t.datetime "start_date", null: false
    t.datetime "deadline"
    t.integer "status", default: 0
    t.string "manager_name"
    t.decimal "contract_amount", precision: 10, scale: 2, default: "0.0"
    t.integer "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_projects_on_client_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "work_parties", force: :cascade do |t|
    t.string "name"
    t.integer "work_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["work_type_id"], name: "index_work_parties_on_work_type_id"
  end

  create_table "work_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "project_work_parties", "projects"
  add_foreign_key "project_work_parties", "work_parties"
  add_foreign_key "projects", "clients"
  add_foreign_key "work_parties", "work_types"
end
