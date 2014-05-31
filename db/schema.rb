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

ActiveRecord::Schema.define(version: 20140531075502) do

  create_table "activities", force: true do |t|
    t.string   "title_fa"
    t.string   "title_en"
    t.string   "title_ar"
    t.text     "description_fa"
    t.text     "description_en"
    t.text     "description_ar"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "categories", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "title_fa"
    t.string   "title_en"
    t.text     "description_fa"
    t.text     "description_en"
    t.string   "title_ar"
    t.text     "description_ar"
  end

  create_table "harams", force: true do |t|
    t.string   "description_fa"
    t.string   "description_en"
    t.string   "description_ar"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "messages", force: true do |t|
    t.text     "email"
    t.string   "name"
    t.string   "phone"
    t.text     "text"
    t.boolean  "visited",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.string   "title"
    t.text     "html_text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title_fa"
    t.text     "html_text_fa"
    t.string   "title_ar"
    t.text     "html_text_ar"
  end

  create_table "pictures", force: true do |t|
    t.text     "description"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title_fa"
    t.text     "description_fa"
    t.string   "title_ar"
    t.text     "description_ar"
  end

  create_table "send_links", force: true do |t|
    t.string   "sender_email"
    t.string   "receiver_email"
    t.string   "current_link"
    t.text     "text"
    t.string   "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sliders", force: true do |t|
    t.string   "description_fa"
    t.string   "description_en"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: true do |t|
    t.text     "email"
    t.string   "user_name"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
