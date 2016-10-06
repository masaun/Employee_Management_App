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

ActiveRecord::Schema.define(version: 20160929151621) do

  create_table "staff_members", force: :cascade do |t|
    t.string   "email",            limit: 255,                 null: false
    t.string   "email_for_index",  limit: 255,                 null: false
    t.string   "given_name",       limit: 255,                 null: false
    t.string   "family_name",      limit: 255,                 null: false
    t.string   "given_name_kana",  limit: 255,                 null: false
    t.string   "family_name_kana", limit: 255,                 null: false
    t.string   "hashedpassword",   limit: 255
    t.date     "start_date",                                   null: false
    t.date     "end_date",                                     null: false
    t.boolean  "suspended",                    default: false, null: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "staff_members", ["email_for_index"], name: "index_staff_members_on_email_for_index", unique: true, using: :btree
  add_index "staff_members", ["given_name_kana", "family_name_kana"], name: "index_staff_members_on_given_name_kana_and_family_name_kana", using: :btree

end
