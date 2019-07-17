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

ActiveRecord::Schema.define(version: 20180215000802) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "active_admin_managed_resources", force: :cascade do |t|
    t.string "class_name", null: false
    t.string "action", null: false
    t.string "name"
    t.index ["class_name", "action", "name"], name: "active_admin_managed_resources_index", unique: true
  end

  create_table "active_admin_permissions", force: :cascade do |t|
    t.integer "managed_resource_id", null: false
    t.integer "role", limit: 2, default: 0, null: false
    t.integer "state", limit: 2, default: 0, null: false
    t.index ["managed_resource_id", "role"], name: "active_admin_permissions_index", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", limit: 2, default: 0, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "events", force: :cascade do |t|
    t.text "event_id"
    t.bigint "group_id"
    t.text "name"
    t.text "description"
    t.integer "number_of_participants"
    t.text "participants_names", default: [], array: true
    t.text "member_bios", default: [], array: true
    t.text "venue"
    t.text "urlname"
    t.text "venue_address"
    t.text "link"
    t.date "event_date"
    t.text "venue_city"
    t.text "venue_state"
    t.text "venue_country"
    t.time "event_time"
    t.float "lat"
    t.float "lon"
    t.text "venue_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float "venue_lat"
    t.float "venue_lon"
    t.integer "keyword_group_id"
    t.bigint "topic_id"
    t.bigint "topic_key_id"
    t.bigint "batch_id"
    t.text "topickeyword"
    t.bigint "location_id"
    t.index ["batch_id"], name: "index_events_on_batch_id"
    t.index ["event_id"], name: "index_events_on_event_id", unique: true
    t.index ["group_id"], name: "index_events_on_group_id"
    t.index ["location_id"], name: "index_events_on_location_id"
    t.index ["topic_id"], name: "index_events_on_topic_id"
  end

  create_table "group_members", force: :cascade do |t|
    t.bigint "member_id"
    t.bigint "group_id"
    t.text "name"
    t.text "bio"
    t.text "city"
    t.text "country"
    t.text "gender"
    t.date "birthday"
    t.text "link"
    t.text "meetup_profile_link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "keyword_group_id"
    t.bigint "topic_id"
    t.bigint "topic_key_id"
    t.bigint "batch_id"
    t.text "topickeyword"
    t.bigint "location_id"
    t.index ["batch_id"], name: "index_group_members_on_batch_id"
    t.index ["location_id"], name: "index_group_members_on_location_id"
    t.index ["member_id", "group_id"], name: "group_members_member_id_group_id_key", unique: true
    t.index ["topic_id"], name: "index_group_members_on_topic_id"
  end

  create_table "groups", force: :cascade do |t|
    t.bigint "group_id"
    t.text "name"
    t.text "urlname"
    t.bigint "meta_category_id"
    t.bigint "meta_category_category_ids", default: [], array: true
    t.text "category_name"
    t.bigint "category_id"
    t.text "city"
    t.bigint "organizer_id"
    t.text "organizer_name"
    t.date "date_of_creation"
    t.text "description"
    t.text "link"
    t.integer "members"
    t.text "who"
    t.float "lat"
    t.text "meta_category_name"
    t.float "lon"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "keyword_group_id"
    t.bigint "topic_id"
    t.bigint "topic_key_id"
    t.bigint "batch_id"
    t.text "topickeyword"
    t.bigint "location_id"
    t.index ["batch_id"], name: "index_groups_on_batch_id"
    t.index ["group_id"], name: "index_groups_on_group_id", unique: true
    t.index ["location_id"], name: "index_groups_on_location_id"
    t.index ["topic_id"], name: "index_groups_on_topic_id"
  end

  create_table "groups_history", force: :cascade do |t|
    t.bigint "group_id"
    t.text "name"
    t.text "urlname"
    t.bigint "meta_category_id"
    t.bigint "meta_category_category_ids", default: [], array: true
    t.text "category_name"
    t.bigint "category_id"
    t.text "city"
    t.bigint "organizer_id"
    t.text "organizer_name"
    t.date "date_of_creation"
    t.text "description"
    t.text "link"
    t.integer "members"
    t.text "who"
    t.float "lat"
    t.text "meta_category_name"
    t.float "lon"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "keyword_group_id"
    t.bigint "topic_id"
    t.bigint "topic_key_id"
    t.bigint "batch_id"
    t.text "topickeyword"
    t.bigint "location_id"
    t.index ["batch_id"], name: "index_groups_history_on_batch_id"
    t.index ["group_id", "created_at"], name: "groups_history_group_id_created_at_key", unique: true
    t.index ["location_id"], name: "index_groups_history_on_location_id"
    t.index ["topic_id"], name: "index_groups_history_on_topic_id"
  end

  create_table "locations", force: :cascade do |t|
    t.text "city"
    t.text "state"
    t.text "country"
    t.float "lat"
    t.float "lon"
    t.integer "radius", limit: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "status", default: true
  end

  create_table "past_events", force: :cascade do |t|
    t.text "event_id"
    t.bigint "group_id"
    t.text "urlname"
    t.text "name"
    t.text "description"
    t.integer "number_of_participants"
    t.text "participants_names", default: [], array: true
    t.text "member_bios", default: [], array: true
    t.text "venue"
    t.text "address"
    t.text "link"
    t.date "event_date"
    t.time "event_time"
    t.float "venue_lat"
    t.float "venue_lon"
    t.text "venue_address"
    t.text "venue_city"
    t.text "venue_state"
    t.text "venue_country"
    t.text "venue_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["event_id"], name: "index_past_events_on_event_id", unique: true
    t.index ["group_id"], name: "index_past_events_on_group_id"
  end

  create_table "rsvps", force: :cascade do |t|
    t.bigint "member_id", null: false
    t.bigint "member_ids", default: [], array: true
    t.bigint "group_id"
    t.text "group_urlname"
    t.text "event_id", null: false
    t.text "link"
    t.text "response"
    t.date "event_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "keyword_group_id"
    t.bigint "topic_id"
    t.bigint "topic_key_id"
    t.bigint "batch_id"
    t.text "topickeyword"
    t.bigint "location_id"
    t.index ["batch_id"], name: "index_rsvps_on_batch_id"
    t.index ["location_id"], name: "index_rsvps_on_location_id"
    t.index ["member_id", "event_id"], name: "rsvps_member_id_event_id_key", unique: true
    t.index ["topic_id"], name: "index_rsvps_on_topic_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.datetime "time"
    t.boolean "groups", default: true
    t.boolean "group_members", default: true
    t.boolean "events", default: true
    t.boolean "rsvps", default: true
    t.boolean "events_upcoming", default: true
    t.boolean "events_past", default: true
    t.boolean "topics", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topickeywords", force: :cascade do |t|
    t.text "keyword"
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "keyword_group_id"
    t.bigint "cities", default: [], array: true
  end

  create_table "topics", force: :cascade do |t|
    t.bigint "topic_id"
    t.text "lang"
    t.text "name"
    t.text "description"
    t.integer "member_count"
    t.integer "group_count"
    t.text "urlkey"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "keyword_group_id"
    t.text "topickeyword"
    t.index ["topic_id"], name: "index_topics_on_topic_id", unique: true
  end

end
