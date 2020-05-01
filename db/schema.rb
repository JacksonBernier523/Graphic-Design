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

ActiveRecord::Schema.define(version: 2020_04_30_010051) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "designs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "creator_id", null: false
    t.string "title", null: false
    t.string "description"
    t.boolean "public", null: false
    t.float "width", null: false
    t.float "height", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_designs_on_creator_id"
    t.index ["user_id"], name: "index_designs_on_user_id"
  end

  create_table "elements", force: :cascade do |t|
    t.integer "design_id", null: false
    t.integer "elementable_id", null: false
    t.string "elementable_type", null: false
    t.float "pos_x", default: 0.0, null: false
    t.float "pos_y", default: 0.0, null: false
    t.integer "z_index", default: 0, null: false
    t.float "transparency", default: 1.0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["design_id"], name: "index_elements_on_design_id"
    t.index ["elementable_id"], name: "index_elements_on_elementable_id"
    t.index ["elementable_type"], name: "index_elements_on_elementable_type"
  end

  create_table "shape_templates", force: :cascade do |t|
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shapes", force: :cascade do |t|
    t.float "width", null: false
    t.float "height", null: false
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "shape", null: false
  end

  create_table "texts", force: :cascade do |t|
    t.string "font_family"
    t.integer "font_size", null: false
    t.integer "font_weight", null: false
    t.text "text", null: false
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
