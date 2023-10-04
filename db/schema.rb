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

ActiveRecord::Schema[7.0].define(version: 2023_10_04_121340) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addons", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.string "unit_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts", force: :cascade do |t|
    t.integer "total_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deal_deal_items", force: :cascade do |t|
    t.bigint "deal_id", null: false
    t.bigint "deal_item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deal_id"], name: "index_deal_deal_items_on_deal_id"
    t.index ["deal_item_id"], name: "index_deal_deal_items_on_deal_item_id"
  end

  create_table "deal_items", force: :cascade do |t|
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deals", force: :cascade do |t|
    t.string "name"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discounts", force: :cascade do |t|
    t.string "discount_percent"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "managers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_categories", force: :cascade do |t|
    t.string "name"
    t.integer "total_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_item_addons", force: :cascade do |t|
    t.bigint "menu_item_id", null: false
    t.bigint "addon_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addon_id"], name: "index_menu_item_addons_on_addon_id"
    t.index ["menu_item_id"], name: "index_menu_item_addons_on_menu_item_id"
  end

  create_table "menu_item_carts", force: :cascade do |t|
    t.bigint "menu_item_id", null: false
    t.bigint "cart_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_menu_item_carts_on_cart_id"
    t.index ["menu_item_id"], name: "index_menu_item_carts_on_menu_item_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "item_name"
    t.string "unit_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.string "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_order_details", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "order_detail_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_detail_id"], name: "index_order_order_details_on_order_detail_id"
    t.index ["order_id"], name: "index_order_order_details_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.date "order_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string "payment_method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string "payment_amount"
    t.date "payment_date"
    t.string "credit_card_no"
    t.string "card_expiry_date"
    t.string "card_holders_name"
    t.integer "CVV_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "restaurant_name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.string "phone_no"
    t.string "address"
    t.string "user_type"
    t.integer "user_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "deal_deal_items", "deal_items"
  add_foreign_key "deal_deal_items", "deals"
  add_foreign_key "menu_item_addons", "addons"
  add_foreign_key "menu_item_addons", "menu_items"
  add_foreign_key "menu_item_carts", "carts"
  add_foreign_key "menu_item_carts", "menu_items"
  add_foreign_key "order_order_details", "order_details"
  add_foreign_key "order_order_details", "orders"
end
