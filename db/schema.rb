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

ActiveRecord::Schema.define(version: 2021_12_21_222526) do

  create_table "artistfavorites", force: :cascade do |t|
    t.integer "artist_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artist_id"], name: "index_artistfavorites_on_artist_id"
    t.index ["user_id"], name: "index_artistfavorites_on_user_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "sex"
    t.string "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "artistphoto"
    t.integer "filtertag_id", null: false
    t.integer "style_id", null: false
    t.integer "brand_id", null: false
    t.integer "user_id", null: false
    t.string "genre"
    t.string "instagram"
    t.string "youtube"
    t.string "spotify"
    t.index ["brand_id"], name: "index_artists_on_brand_id"
    t.index ["filtertag_id"], name: "index_artists_on_filtertag_id"
    t.index ["style_id"], name: "index_artists_on_style_id"
    t.index ["user_id"], name: "index_artists_on_user_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.string "link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cloths", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "artist_id", null: false
    t.string "clothimage"
    t.string "link"
    t.index ["artist_id"], name: "index_cloths_on_artist_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "post_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_favorites_on_post_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "favotite_as", force: :cascade do |t|
    t.integer "artist_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artist_id"], name: "index_favotite_as_on_artist_id"
    t.index ["user_id"], name: "index_favotite_as_on_user_id"
  end

  create_table "filtertags", force: :cascade do |t|
    t.string "name"
    t.boolean "display_in_navbar", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "artist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artist_id"], name: "index_items_on_artist_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "artist_id", null: false
    t.integer "style_id", null: false
    t.integer "brand_id", null: false
    t.integer "type_id", null: false
    t.integer "user_id", null: false
    t.string "postcover"
    t.string "fimage"
    t.string "simage"
    t.string "timage"
    t.index ["artist_id"], name: "index_posts_on_artist_id"
    t.index ["brand_id"], name: "index_posts_on_brand_id"
    t.index ["style_id"], name: "index_posts_on_style_id"
    t.index ["type_id"], name: "index_posts_on_type_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "styles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "subscribers", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.boolean "isadmin", default: false
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "artistfavorites", "artists"
  add_foreign_key "artistfavorites", "users"
  add_foreign_key "artists", "brands"
  add_foreign_key "artists", "filtertags"
  add_foreign_key "artists", "styles"
  add_foreign_key "artists", "users"
  add_foreign_key "cloths", "artists"
  add_foreign_key "favorites", "posts"
  add_foreign_key "favorites", "users"
  add_foreign_key "favotite_as", "artists"
  add_foreign_key "favotite_as", "users"
  add_foreign_key "items", "artists"
  add_foreign_key "posts", "artists"
  add_foreign_key "posts", "brands"
  add_foreign_key "posts", "styles"
  add_foreign_key "posts", "types"
  add_foreign_key "posts", "users"
end
