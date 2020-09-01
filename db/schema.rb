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

ActiveRecord::Schema.define(version: 2020_09_01_143613) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.integer "store_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "total", precision: 10, scale: 2
    t.decimal "paid", precision: 10, scale: 2
    t.decimal "balance", precision: 10, scale: 2
    t.index ["store_id"], name: "index_customers_on_store_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.decimal "total", precision: 10, scale: 2
    t.decimal "paid", precision: 10, scale: 2
    t.decimal "balance", precision: 10, scale: 2
    t.integer "customer_id"
    t.integer "store_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_invoices_on_customer_id"
    t.index ["store_id"], name: "index_invoices_on_store_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.decimal "cost", precision: 10, scale: 2
    t.string "description"
    t.integer "store_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["store_id"], name: "index_items_on_store_id"
  end

  create_table "orders", force: :cascade do |t|
    t.decimal "quantity", precision: 10, scale: 3
    t.decimal "total_cost", precision: 10, scale: 2
    t.integer "item_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "invoice_id"
    t.index ["invoice_id"], name: "index_orders_on_invoice_id"
    t.index ["item_id"], name: "index_orders_on_item_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "customers", "stores"
  add_foreign_key "invoices", "customers"
  add_foreign_key "invoices", "stores"
  add_foreign_key "items", "stores"
  add_foreign_key "orders", "invoices"
  add_foreign_key "orders", "items"
end
