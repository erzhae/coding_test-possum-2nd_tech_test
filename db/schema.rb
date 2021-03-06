# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_25_155506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "article_histories", force: :cascade do |t|
    t.bigint "article_id", null: false
    t.string "title"
    t.text "body"
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_deleted", default: false
    t.datetime "deleted_at"
    t.index ["article_id"], name: "index_article_histories_on_article_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "author"
    t.boolean "is_deleted", default: false
    t.datetime "deleted_at"
  end

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.bigint "article_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_deleted", default: false
    t.datetime "deleted_at"
    t.index ["article_id"], name: "index_comments_on_article_id"
  end

  add_foreign_key "article_histories", "articles"
  add_foreign_key "comments", "articles"
end
