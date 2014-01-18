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

ActiveRecord::Schema.define(:version => 20140118084635) do

  create_table "cases", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "news_feed"
    t.date     "case_date"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "case_img_file_name"
    t.string   "case_img_content_type"
    t.integer  "case_img_file_size"
    t.datetime "case_img_updated_at"
  end

  create_table "clues", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "clue_img_file_name"
    t.string   "clue_img_content_type"
    t.integer  "clue_img_file_size"
    t.datetime "clue_img_updated_at"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "crime_scenes", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "case_img_file_name"
    t.string   "case_img_content_type"
    t.integer  "case_img_file_size"
    t.datetime "case_img_updated_at"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "game_plays", :force => true do |t|
    t.integer  "user_id"
    t.integer  "case_id"
    t.integer  "score"
    t.integer  "xp"
    t.integer  "level"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "games", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "killers", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "killer_img_file_name"
    t.string   "killer_img_content_type"
    t.integer  "killer_img_file_size"
    t.datetime "killer_img_updated_at"
    t.text     "statement"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "ppl_involveds", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "avtar_img_file_name"
    t.string   "avtar_img_content_type"
    t.integer  "avtar_img_file_size"
    t.datetime "avtar_img_updated_at"
    t.text     "statement"
    t.integer  "score"
    t.integer  "xp"
    t.integer  "cost"
    t.string   "type"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "victims", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "victim_img_file_name"
    t.string   "victim_img_content_type"
    t.integer  "victim_img_file_size"
    t.datetime "victim_img_updated_at"
    t.text     "statement"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

end
