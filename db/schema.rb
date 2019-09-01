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

ActiveRecord::Schema.define(version: 2019_09_01_191409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pickups", force: :cascade do |t|
    t.string "pickup_days"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "place_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.float "distance"
    t.string "hours"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "zip_pickups", force: :cascade do |t|
    t.integer "zip_id"
    t.integer "pickup_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "zips", force: :cascade do |t|
    t.string "zip_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
