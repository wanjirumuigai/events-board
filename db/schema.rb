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

ActiveRecord::Schema.define(version: 2023_04_09_085935) do

  create_table "event_staffs", force: :cascade do |t|
    t.integer "supervisor_id"
    t.integer "it_id"
    t.integer "housekeeper_id"
    t.integer "catering_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "event_type"
    t.integer "number_of_participants"
    t.string "status"
    t.datetime "event_date"
    t.integer "venue_id"
    t.integer "event_staff_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "role"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.integer "capacity"
  end

end
