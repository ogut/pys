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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130611025149) do

  create_table "aprograms", :force => true do |t|
    t.string   "donem"
    t.integer  "katsayi"
    t.integer  "program_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "aprograms", ["program_id"], :name => "index_aprograms_on_program_id"

  create_table "koordinators", :force => true do |t|
    t.string   "kurum"
    t.string   "akademik"
    t.string   "enstitu"
    t.integer  "odeme_program_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "program_id"
  end

  add_index "koordinators", ["odeme_program_id"], :name => "index_koordinators_on_odeme_program_id"

  create_table "lectures", :force => true do |t|
    t.string   "ad"
    t.string   "kredi"
    t.string   "sube"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "program_id"
  end

  create_table "odeme_akademists", :force => true do |t|
    t.string   "ad"
    t.string   "soyad"
    t.string   "unvan"
    t.integer  "lecture_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "odeme_akademists", ["lecture_id"], :name => "index_odeme_akademists_on_lecture_id"

  create_table "odeme_programs", :force => true do |t|
    t.string   "ad"
    t.string   "katsayi"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.boolean  "krd",        :default => false
    t.boolean  "dnm",        :default => false
  end

  create_table "takvims", :force => true do |t|
    t.string   "islem"
    t.integer  "lecture_id"
    t.integer  "akademist_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "takvims", ["akademist_id"], :name => "index_takvims_on_akademist_id"
  add_index "takvims", ["lecture_id"], :name => "index_takvims_on_lecture_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
