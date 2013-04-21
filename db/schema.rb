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

ActiveRecord::Schema.define(:version => 20130421210146) do

  create_table "buyers", :force => true do |t|
    t.integer  "user_id"
    t.integer  "wantedad_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "cars", :force => true do |t|
    t.string   "make"
    t.string   "model"
    t.integer  "year"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "offer_id"
  end

  create_table "offers", :force => true do |t|
    t.string   "ownermake"
    t.string   "ownermodel"
    t.integer  "owneryear"
    t.integer  "ownermileage"
    t.text     "ownerdesc"
    t.string   "ownercartype"
    t.integer  "offerprice"
    t.string   "image1"
    t.integer  "seller_id"
    t.integer  "estvalue"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "user_id"
    t.integer  "wanted_ad_id"
  end

  create_table "sellers", :force => true do |t|
    t.integer  "user_id"
    t.integer  "offer_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password"
    t.string   "kind"
    t.integer  "zip"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "remember_token"
    t.string   "password_digest"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "wanted_ads", :force => true do |t|
    t.string   "car_type"
    t.string   "car_make"
    t.string   "car_model"
    t.integer  "mileage_from"
    t.integer  "mileage_to"
    t.integer  "budget_from"
    t.integer  "budget_to"
    t.text     "description"
    t.integer  "desired_mpg"
    t.string   "color"
    t.integer  "year_from"
    t.integer  "year_to"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "user_id"
  end

end
