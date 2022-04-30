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

ActiveRecord::Schema[7.0].define(version: 2022_04_30_003715) do
  create_table "drink_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "preparation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "service_id", null: false
    t.integer "drinkware_id", null: false
    t.integer "drink_category_id", null: false
    t.index ["drink_category_id"], name: "index_drinks_on_drink_category_id"
    t.index ["drinkware_id"], name: "index_drinks_on_drinkware_id"
    t.index ["service_id"], name: "index_drinks_on_service_id"
  end

  create_table "drinkwares", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredient_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredient_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.boolean "in_stock"
    t.integer "ingredient_category_id", null: false
    t.integer "ingredient_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_category_id"], name: "index_ingredients_on_ingredient_category_id"
    t.index ["ingredient_type_id"], name: "index_ingredients_on_ingredient_type_id"
  end

  create_table "quantities", force: :cascade do |t|
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "drinks", "drink_categories"
  add_foreign_key "drinks", "drinkwares"
  add_foreign_key "drinks", "services"
  add_foreign_key "ingredients", "ingredient_categories"
  add_foreign_key "ingredients", "ingredient_types"
end
