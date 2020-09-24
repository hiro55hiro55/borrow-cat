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

ActiveRecord::Schema.define(version: 2020_09_23_160654) do

  create_table "lends", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "start_year_id"
    t.integer "start_month_id"
    t.integer "start_day_id"
    t.integer "start_time_id"
    t.integer "start_minutes_id"
    t.integer "finish_time_id"
    t.integer "finish_minutes_id"
    t.integer "hourly_pay"
    t.integer "user_id"
    t.integer "borrow_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "nickname", default: "", null: false
    t.string "shop_name", default: "", null: false
    t.string "financial_name", default: "", null: false
    t.string "branch_name", default: "", null: false
    t.integer "selectkouza_id"
    t.integer "account_number", null: false
    t.string "kouza_name", null: false
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "first_name_kana", default: "", null: false
    t.string "last_name_kana", default: "", null: false
    t.integer "postal_code"
    t.string "city"
    t.string "addresses"
    t.integer "address_prefecture_id"
    t.string "buildings"
    t.integer "shop_phone"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
