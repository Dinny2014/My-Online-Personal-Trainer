# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140427051907) do

  create_table "body_part_exercises", force: true do |t|
    t.integer  "body_part_id"
    t.integer  "exercise_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "body_part_exercises", ["body_part_id"], name: "index_body_part_exercises_on_body_part_id"
  add_index "body_part_exercises", ["exercise_id"], name: "index_body_part_exercises_on_exercise_id"

  create_table "body_parts", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exercises", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "exercise_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programme_exercises", force: true do |t|
    t.integer  "programme_id"
    t.integer  "exercise_id"
    t.integer  "order"
    t.integer  "time"
    t.integer  "rest"
    t.integer  "sets"
    t.integer  "time_per_set"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "reps"
    t.string   "tempo"
  end

  add_index "programme_exercises", ["exercise_id"], name: "index_programme_exercises_on_exercise_id"
  add_index "programme_exercises", ["programme_id"], name: "index_programme_exercises_on_programme_id"

  create_table "programme_supersets", force: true do |t|
    t.integer  "programme_id"
    t.integer  "superset_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "programme_supersets", ["programme_id"], name: "index_programme_supersets_on_programme_id"
  add_index "programme_supersets", ["superset_id"], name: "index_programme_supersets_on_superset_id"

  create_table "programme_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programmer_exercises", force: true do |t|
    t.integer  "programme_id"
    t.integer  "exercise_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "programmer_exercises", ["exercise_id"], name: "index_programmer_exercises_on_exercise_id"
  add_index "programmer_exercises", ["programme_id"], name: "index_programmer_exercises_on_programme_id"

  create_table "programmes", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "programme_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "duration"
    t.string   "sex"
    t.integer  "total_time"
  end

  add_index "programmes", ["programme_type_id"], name: "index_programmes_on_programme_type_id"

  create_table "superset_exercises", force: true do |t|
    t.integer  "superset_id"
    t.integer  "exercise_id"
    t.integer  "order"
    t.string   "tempo"
    t.integer  "reps"
    t.integer  "time"
    t.integer  "rest"
    t.integer  "sets"
    t.integer  "time_per_set"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "superset_exercises", ["exercise_id"], name: "index_superset_exercises_on_exercise_id"
  add_index "superset_exercises", ["superset_id"], name: "index_superset_exercises_on_superset_id"

  create_table "supersets", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "sets"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "videos", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "exercise_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "videos", ["exercise_id"], name: "index_videos_on_exercise_id"

end
