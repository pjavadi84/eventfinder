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

ActiveRecord::Schema.define(version: 2020_04_09_063208) do

  create_table "events", force: :cascade do |t|
    t.string "type"
    t.integer "maximum_occupancy"
    t.integer "ticket_price"
    t.datetime "date_and_time"
    t.integer "duration"
    t.integer "user_id", null: false
    t.integer "property_id", null: false
    t.index ["property_id"], name: "index_events_on_property_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "landlords", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.integer "phone_number"
    t.integer "street_address_number"
    t.string "street_address_name"
    t.string "address_city"
    t.string "address_state"
    t.integer "property_sales"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string "property_name"
    t.string "manager_name"
    t.integer "phone_number"
    t.integer "street_address_number"
    t.string "street_address_name"
    t.string "address_city"
    t.string "address_state"
    t.boolean "event_type"
    t.integer "maximum_occupancy"
    t.float "profit_expectation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "username"
    t.string "password_digest"
    t.integer "phone_number"
    t.string "email"
    t.integer "number_of_guests"
    t.integer "budget"
    t.string "event_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "events", "properties"
  add_foreign_key "events", "users"
end
