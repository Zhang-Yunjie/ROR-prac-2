# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_29_133529) do

  create_table "mods", force: :cascade do |t|
    t.string "module_code"
    t.text "module_description"
    t.string "module_title"
    t.integer "module_MC"
  end

  create_table "modules", force: :cascade do |t|
    t.string "module_code"
    t.text "module_description"
    t.string "module_title"
    t.integer "MC"
  end

  create_table "semesters", force: :cascade do |t|
    t.string "ay"
    t.string "sem"
    t.boolean "past"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_mods", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "mod_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mod_id"], name: "index_user_mods_on_mod_id"
    t.index ["user_id"], name: "index_user_mods_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "seniority"
    t.string "degree_program"
    t.string "first_major"
    t.string "second_major"
    t.string "first_minor"
    t.string "second_minor"
    t.string "special_program"
    t.string "double_degree"
  end

  add_foreign_key "user_mods", "mods"
  add_foreign_key "user_mods", "users"
end
