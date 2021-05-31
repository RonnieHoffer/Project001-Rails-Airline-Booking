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

ActiveRecord::Schema.define(version: 2021_05_31_021209) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aircrafts", force: :cascade do |t|
    t.string "type"
    t.integer "economy_seats"
    t.integer "business_seats"
    t.integer "first_class_seats"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "airports", force: :cascade do |t|
    t.string "city"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "flight_id"
    t.integer "economy_tickets"
    t.integer "business_tickets"
    t.integer "first_class_tickets"
    t.integer "meat"
    t.integer "fish"
    t.integer "dairy"
    t.integer "vegan"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "flights", force: :cascade do |t|
    t.string "flight_number"
    t.integer "aircraft_id"
    t.integer "depart_airport_id"
    t.integer "arriv_airport_id"
    t.date "date"
    t.time "depart_time"
    t.time "arriv_time"
    t.integer "total_economy_seats"
    t.integer "total_business_seats"
    t.integer "total_first_class_seats"
    t.integer "remaining_economy_seats"
    t.integer "remaining_business_seats"
    t.integer "remaining_first_class_seats"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.boolean "is_admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
