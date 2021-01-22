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

ActiveRecord::Schema.define(version: 2021_01_22_221647) do

  create_table "power_rack_types", force: :cascade do |t|
    t.integer "type_id"
    t.string "name"
    t.boolean "dimmed"
    t.integer "rack_size"
    t.boolean "mixed_voltage"
    t.integer "ckt_per_mult"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "power_racks", force: :cascade do |t|
    t.integer "rack_id"
    t.string "rack_call"
    t.string "rack_name"
    t.string "rack_location"
    t.bigint "service_id"
    t.bigint "rack_type_id"
    t.integer "rack_addr_start"
    t.integer "rack_univ"
    t.integer "phase_rotation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
