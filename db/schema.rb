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

ActiveRecord::Schema[7.0].define(version: 2022_06_13_061519) do
  create_table "giftcoupons", force: :cascade do |t|
    t.integer "user_x_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.float "gift_card_value"
    t.float "total_amount"
    t.string "mobile_no"
    t.string "address"
    t.date "order_date"
    t.string "status", default: "Out for Delivery"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_x_id"], name: "index_giftcoupons_on_user_x_id"
  end

  create_table "user_xes", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "role", default: false
  end

  add_foreign_key "giftcoupons", "user_xes"
end
