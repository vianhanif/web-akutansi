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

ActiveRecord::Schema.define(version: 20160901152319) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "akuns", force: :cascade do |t|
    t.string   "kode"
    t.string   "nama"
    t.integer  "tipe_akun_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["tipe_akun_id"], name: "index_akuns_on_tipe_akun_id", using: :btree
    t.index ["user_id"], name: "index_akuns_on_user_id", using: :btree
  end

  create_table "female_transaksis", force: :cascade do |t|
    t.integer  "akun_id"
    t.text     "deskripsi"
    t.decimal  "nominal"
    t.integer  "tipe_relasi_id"
    t.integer  "jurnal_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["akun_id"], name: "index_female_transaksis_on_akun_id", using: :btree
    t.index ["jurnal_id"], name: "index_female_transaksis_on_jurnal_id", using: :btree
    t.index ["tipe_relasi_id"], name: "index_female_transaksis_on_tipe_relasi_id", using: :btree
  end

  create_table "jurnals", force: :cascade do |t|
    t.integer  "koleksi_jurnal_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["koleksi_jurnal_id"], name: "index_jurnals_on_koleksi_jurnal_id", using: :btree
  end

  create_table "koleksi_jurnals", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_koleksi_jurnals_on_user_id", using: :btree
  end

  create_table "male_transaksis", force: :cascade do |t|
    t.integer  "akun_id"
    t.text     "deskripsi"
    t.decimal  "nominal"
    t.integer  "tipe_relasi_id"
    t.integer  "jurnal_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["akun_id"], name: "index_male_transaksis_on_akun_id", using: :btree
    t.index ["jurnal_id"], name: "index_male_transaksis_on_jurnal_id", using: :btree
    t.index ["tipe_relasi_id"], name: "index_male_transaksis_on_tipe_relasi_id", using: :btree
  end

  create_table "tipe_akuns", force: :cascade do |t|
    t.string   "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipe_relasis", force: :cascade do |t|
    t.string   "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "akuns", "tipe_akuns"
  add_foreign_key "akuns", "users"
  add_foreign_key "female_transaksis", "akuns"
  add_foreign_key "female_transaksis", "jurnals"
  add_foreign_key "female_transaksis", "tipe_relasis"
  add_foreign_key "jurnals", "koleksi_jurnals"
  add_foreign_key "koleksi_jurnals", "users"
  add_foreign_key "male_transaksis", "akuns"
  add_foreign_key "male_transaksis", "jurnals"
  add_foreign_key "male_transaksis", "tipe_relasis"
end
