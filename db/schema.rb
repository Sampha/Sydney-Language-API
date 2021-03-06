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

ActiveRecord::Schema.define(version: 2019_01_30_090546) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alternate_vocabularies", force: :cascade do |t|
    t.string "dharug_word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "dharug_id"
    t.index ["dharug_id"], name: "index_alternate_vocabularies_on_dharug_id"
  end

  create_table "alternate_vocabularies_sources", force: :cascade do |t|
    t.integer "alternate_vocabulary_id"
    t.integer "source_id"
    t.index ["source_id"], name: "index_alternate_vocabularies_sources_on_source_id"
  end

  create_table "dharugs", force: :cascade do |t|
    t.string "dharug_word"
    t.string "english_word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dharugs_sources", id: false, force: :cascade do |t|
    t.integer "dharug_id"
    t.integer "source_id"
    t.index ["dharug_id"], name: "index_dharugs_sources_on_dharug_id"
    t.index ["source_id"], name: "index_dharugs_sources_on_source_id"
  end

  create_table "sources", force: :cascade do |t|
    t.string "source"
    t.string "shorthand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
