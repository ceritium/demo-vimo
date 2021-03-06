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

ActiveRecord::Schema.define(version: 20180218120708) do

  create_table "books", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_books_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vimo_entities", force: :cascade do |t|
    t.string "name"
    t.string "system_name"
    t.string "owner_type"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id", "owner_type", "system_name"], name: "entity_unique_system_name", unique: true
    t.index ["owner_type", "owner_id"], name: "index_vimo_entities_on_owner_type_and_owner_id"
  end

  create_table "vimo_fields", force: :cascade do |t|
    t.string "name"
    t.string "system_name"
    t.integer "kind"
    t.boolean "required"
    t.integer "entity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entity_id", "system_name"], name: "field_unique_system_name", unique: true
    t.index ["entity_id"], name: "index_vimo_fields_on_entity_id"
  end

  create_table "vimo_items", force: :cascade do |t|
    t.integer "entity_id"
    t.string "expandable_type"
    t.integer "expandable_id"
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entity_id"], name: "index_vimo_items_on_entity_id"
    t.index ["expandable_type", "expandable_id"], name: "index_vimo_items_on_expandable_type_and_expandable_id"
  end

end
