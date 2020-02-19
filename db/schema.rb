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

ActiveRecord::Schema.define(version: 2020200217064938) do

  create_table "behavior_condition", force: :cascade do |t|
    t.integer "behavior_id"
    t.integer "condition_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "behaviors", force: :cascade do |t|
    t.string "name"
    t.string "details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "condition_id"
    t.index ["condition_id"], name: "index_behaviors_on_condition_id"
    t.index ["user_id"], name: "index_behaviors_on_user_id"
  end

  create_table "conditions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "behavior_id"
    t.index ["behavior_id"], name: "index_conditions_on_behavior_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "provider_id"
    t.index ["provider_id"], name: "index_departments_on_provider_id"
  end

  create_table "insurances", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_insurances_on_user_id"
  end

  create_table "medications", force: :cascade do |t|
    t.string "name"
    t.integer "dose"
    t.string "prescribed"
    t.date "first_dose"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "like"
    t.index ["user_id"], name: "index_medications_on_user_id"
  end

  create_table "provider_departments", force: :cascade do |t|
    t.integer "provider_id"
    t.integer "department_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.date "first_visit"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "department_id"
    t.index ["department_id"], name: "index_providers_on_department_id"
    t.index ["user_id"], name: "index_providers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  add_foreign_key "behaviors", "conditions"
  add_foreign_key "behaviors", "users"
  add_foreign_key "conditions", "behaviors"
  add_foreign_key "departments", "providers"
  add_foreign_key "insurances", "users"
  add_foreign_key "medications", "users"
  add_foreign_key "providers", "departments"
  add_foreign_key "providers", "users"
end
