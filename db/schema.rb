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

ActiveRecord::Schema.define(version: 20180107022245) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "kosts_id"
    t.index ["kosts_id"], name: "index_images_on_kosts_id"
  end

  create_table "kosts", force: :cascade do |t|
    t.string "nama_kos"
    t.integer "harga_kos"
    t.string "foto"
    t.text "fasilitas"
    t.text "alamat"
    t.string "keterangan_lain"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pengguna_id"
    t.string "kost_img_file_name"
    t.string "kost_img_content_type"
    t.integer "kost_img_file_size"
    t.datetime "kost_img_updated_at"
    t.string "kost_img2_file_name"
    t.string "kost_img2_content_type"
    t.integer "kost_img2_file_size"
    t.datetime "kost_img2_updated_at"
    t.string "kost_img3_file_name"
    t.string "kost_img3_content_type"
    t.integer "kost_img3_file_size"
    t.datetime "kost_img3_updated_at"
    t.index ["pengguna_id"], name: "index_kosts_on_pengguna_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "pesan"
    t.integer "receiver"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pengguna_id"
    t.integer "kost_id"
    t.index ["pengguna_id"], name: "index_messages_on_pengguna_id"
  end

  create_table "penggunas", force: :cascade do |t|
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
    t.string "Nama"
    t.string "NoId"
    t.text "Alamat"
    t.string "Jk"
    t.datetime "tgl_lahir"
    t.string "Foto"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["email"], name: "index_penggunas_on_email", unique: true
    t.index ["reset_password_token"], name: "index_penggunas_on_reset_password_token", unique: true
  end

  add_foreign_key "images", "kosts", column: "kosts_id"
  add_foreign_key "kosts", "penggunas"
  add_foreign_key "messages", "penggunas"
end
