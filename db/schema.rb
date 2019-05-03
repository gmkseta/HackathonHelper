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

ActiveRecord::Schema.define(version: 2019_05_03_215624) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.integer "kill_count", default: 0
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "apis", force: :cascade do |t|
    t.text "message"
    t.integer "keyboard_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["keyboard_id"], name: "index_apis_on_keyboard_id"
  end

  create_table "bamboos", force: :cascade do |t|
    t.text "content"
    t.string "user_key"
    t.integer "user_record_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_record_id"], name: "index_bamboos_on_user_record_id"
  end

  create_table "buttons", force: :cascade do |t|
    t.string "content"
    t.integer "next_api_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "keyboard_id"
    t.index ["keyboard_id"], name: "index_buttons_on_keyboard_id"
    t.index ["next_api_id"], name: "index_buttons_on_next_api_id"
  end

  create_table "csses", force: :cascade do |t|
    t.string "name"
    t.integer "width"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keyboards", force: :cascade do |t|
    t.integer "key_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "musics", force: :cascade do |t|
    t.string "content"
    t.string "user_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_record_id"
    t.index ["user_record_id"], name: "index_musics_on_user_record_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "content"
    t.string "user_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_record_id"
    t.integer "flag", default: 0
    t.index ["user_record_id"], name: "index_questions_on_user_record_id"
  end

  create_table "user_records", force: :cascade do |t|
    t.string "user_key"
    t.text "content"
    t.integer "button_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "before_record_id"
    t.index ["before_record_id"], name: "index_user_records_on_before_record_id"
    t.index ["button_id"], name: "index_user_records_on_button_id"
  end

end
