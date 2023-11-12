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

ActiveRecord::Schema[7.0].define(version: 2023_11_12_055738) do
  create_table "bookings", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "journey_sightseeing_stop_id", null: false
    t.integer "payment_id", null: false
    t.float "total_cost", null: false
    t.date "booking_date", null: false
    t.integer "remaining_day", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["journey_sightseeing_stop_id"], name: "index_bookings_on_journey_sightseeing_stop_id"
    t.index ["payment_id"], name: "index_bookings_on_payment_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "driver_assignments", force: :cascade do |t|
    t.integer "booking_id", null: false
    t.integer "driver_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_driver_assignments_on_booking_id"
    t.index ["driver_id"], name: "index_driver_assignments_on_driver_id"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "full_name", null: false
    t.string "phone_number", null: false
    t.string "email", null: false
    t.string "profile_photo", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_drivers_on_email", unique: true
  end

  create_table "email_communications", force: :cascade do |t|
    t.integer "user_id", null: false
    t.text "email_detail", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_email_communications_on_user_id"
  end

  create_table "journey_sightseeing_stops", force: :cascade do |t|
    t.integer "journey_id", null: false
    t.integer "sightseeing_stop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["journey_id"], name: "index_journey_sightseeing_stops_on_journey_id"
    t.index ["sightseeing_stop_id"], name: "index_journey_sightseeing_stops_on_sightseeing_stop_id"
  end

  create_table "journeys", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "vehicle_id", null: false
    t.string "origin_city", null: false
    t.string "destination_city", null: false
    t.date "departure_date", null: false
    t.time "departure_time", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_journeys_on_user_id"
    t.index ["vehicle_id"], name: "index_journeys_on_vehicle_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "payment_method", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sightseeing_stops", force: :cascade do |t|
    t.string "stop_name", null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name", null: false
    t.string "phone_number", null: false
    t.string "email", null: false
    t.string "profile_photo", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "vehicle_type", null: false
    t.integer "seating_capacity", null: false
    t.string "amenities"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookings", "journey_sightseeing_stops"
  add_foreign_key "bookings", "payments"
  add_foreign_key "bookings", "users"
  add_foreign_key "driver_assignments", "bookings"
  add_foreign_key "driver_assignments", "drivers"
  add_foreign_key "email_communications", "users"
  add_foreign_key "journey_sightseeing_stops", "journeys"
  add_foreign_key "journey_sightseeing_stops", "sightseeing_stops"
  add_foreign_key "journeys", "users"
  add_foreign_key "journeys", "vehicles"
end
