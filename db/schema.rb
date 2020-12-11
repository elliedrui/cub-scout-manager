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

ActiveRecord::Schema.define(version: 2020_07_18_180936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dens", force: :cascade do |t|
    t.string "den_name"
    t.string "grade"
    t.string "meeting_time"
    t.bigint "pack_id"
    t.bigint "scout_id"
    t.bigint "leader_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "leaders", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.boolean "is_user", default: false
    t.bigint "den_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "leaders_scout", id: false, force: :cascade do |t|
    t.bigint "leader_id"
    t.bigint "scout_id"
    t.index ["leader_id"], name: "index_leaders_scout_on_leader_id"
    t.index ["scout_id"], name: "index_leaders_scout_on_scout_id"
  end

  create_table "packs", force: :cascade do |t|
    t.integer "pack_number"
    t.string "charter_organization"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "scouts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "grade"
    t.bigint "den_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "uid"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
