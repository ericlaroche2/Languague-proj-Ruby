# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_10_27_045948) do

  create_table "foods", force: :cascade do |t|
    t.string "ROW_ID"
    t.string "REF_DATE"
    t.string "GEO"
    t.string "DGUID"
    t.string "Foodcategories"
    t.string "Commodity"
    t.string "UOM"
    t.string "UOM_ID"
    t.string "SCALAR_FACTOR"
    t.string "SCALAR_ID"
    t.string "VECTOR"
    t.string "COORDINATE"
    t.string "VALUE"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
