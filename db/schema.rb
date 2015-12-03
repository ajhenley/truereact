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

ActiveRecord::Schema.define(version: 20151203203641) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "surveys", force: :cascade do |t|
    t.string   "subj"
    t.string   "crsenum"
    t.string   "sect"
    t.string   "coursetitle"
    t.integer  "credits"
    t.string   "instrfirst"
    t.string   "instrlast"
    t.text     "q1text"
    t.integer  "q1num"
    t.text     "q2text"
    t.integer  "q2num"
    t.text     "q3text"
    t.integer  "q3num"
    t.text     "q4text"
    t.integer  "q4num"
    t.text     "q5text"
    t.integer  "q5num"
    t.text     "q6text"
    t.integer  "q6num"
    t.text     "q7text"
    t.integer  "q7num"
    t.text     "q8text"
    t.integer  "q8num"
    t.text     "q9text"
    t.integer  "q9num"
    t.text     "q10text"
    t.integer  "q10num"
    t.text     "q1"
    t.text     "q2"
    t.text     "q3"
    t.text     "q4"
    t.text     "q5"
    t.text     "q6"
    t.text     "q7"
    t.text     "q8"
    t.text     "q9"
    t.text     "q10"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "instid"
    t.string   "string"
    t.text     "q11"
    t.text     "q12"
    t.text     "q13"
    t.text     "q14"
    t.text     "q15"
    t.integer  "q11num"
    t.integer  "q12num"
    t.integer  "q13num"
    t.integer  "q14num"
    t.integer  "q15num"
    t.text     "q11text"
    t.text     "q12text"
    t.text     "q13text"
    t.text     "q14text"
    t.text     "q15text"
    t.integer  "studentid"
    t.string   "crn"
    t.integer  "ownerid"
    t.integer  "isdone"
    t.string   "instrid"
  end

  create_table "templates", force: :cascade do |t|
    t.integer  "ownerid"
    t.string   "schoolname"
    t.string   "q1"
    t.string   "qtype1"
    t.string   "q2"
    t.string   "qtype2"
    t.string   "q3"
    t.string   "qtype3"
    t.string   "q4"
    t.string   "qtype4"
    t.string   "q5"
    t.string   "qtype5"
    t.string   "q6"
    t.string   "qtype6"
    t.string   "q7"
    t.string   "qtype7"
    t.string   "q8"
    t.string   "qtype8"
    t.string   "q9"
    t.string   "qtype9"
    t.string   "q10"
    t.string   "qtype10"
    t.integer  "isActive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "q11"
    t.string   "qtype11"
    t.string   "q12"
    t.string   "qtype12"
    t.string   "q13"
    t.string   "qtype13"
    t.string   "q14"
    t.string   "qtype14"
    t.string   "q15"
    t.string   "qtype15"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "role"
    t.string   "lname"
    t.string   "fname"
    t.string   "instid"
  end

  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
