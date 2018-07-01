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

ActiveRecord::Schema.define(version: 2018_07_01_210312) do

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.string "text"
    t.integer "sound_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sound_id"], name: "index_posts_on_sound_id"
  end

  create_table "sounds", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "description"
    t.boolean "admin", default: false
    t.string "thumbnail_file_name"
    t.string "thumbnail_content_type"
    t.integer "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
    t.index ["email"], name: "index_sounds_on_email", unique: true
    t.index ["reset_password_token"], name: "index_sounds_on_reset_password_token", unique: true
  end

  create_table "tracks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "sound_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "track_thumbnail_file_name"
    t.string "track_thumbnail_content_type"
    t.integer "track_thumbnail_file_size"
    t.datetime "track_thumbnail_updated_at"
    t.index ["sound_id"], name: "index_tracks_on_sound_id"
  end

end
