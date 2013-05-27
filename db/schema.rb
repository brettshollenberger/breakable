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

ActiveRecord::Schema.define(:version => 20130527185541) do

  create_table "clients", :force => true do |t|
    t.string   "name",            :null => false
    t.string   "primary_contact", :null => false
    t.string   "email",           :null => false
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "developers", :force => true do |t|
    t.string   "name",        :null => false
    t.integer  "hourly_rate", :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "title",          :null => false
    t.integer  "total_cost"
    t.datetime "due_date"
    t.integer  "estimated_cost"
    t.integer  "client_id",      :null => false
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "story_files", :force => true do |t|
    t.string   "filename",      :null => false
    t.integer  "user_story_id", :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "tags", :force => true do |t|
    t.string   "tag",        :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_stories", :force => true do |t|
    t.string   "title",          :null => false
    t.string   "story",          :null => false
    t.datetime "due_date",       :null => false
    t.integer  "estimated_cost", :null => false
    t.integer  "actual_cost"
    t.integer  "project_id",     :null => false
    t.integer  "developer_id",   :null => false
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "user_stories_tags", :force => true do |t|
    t.integer  "tag_id",        :null => false
    t.integer  "user_story_id", :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
