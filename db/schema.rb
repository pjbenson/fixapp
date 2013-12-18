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

ActiveRecord::Schema.define(:version => 20131213111651) do

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.string   "photo"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "posts", :force => true do |t|
    t.text     "content"
    t.integer  "customer_id"
    t.integer  "tradesperson_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "requests", :force => true do |t|
    t.date     "date"
    t.integer  "trade_id"
    t.text     "desription"
    t.string   "location"
    t.date     "startDate"
    t.integer  "tradesperson_id"
    t.integer  "customer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.float    "longitude"
    t.float    "latitude"
  end

  create_table "trades", :force => true do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tradespeople", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.boolean  "fullyQualified"
    t.integer  "trade_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "photo"
    t.string   "email"
    t.float    "latitude"
    t.float    "longitude"
  end

end
