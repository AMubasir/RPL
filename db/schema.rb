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

ActiveRecord::Schema.define(version: 20160502154110) do

  create_table "jenis_mobils", force: :cascade do |t|
    t.string   "jenis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mobils", force: :cascade do |t|
    t.string   "nama"
    t.string   "warna"
    t.string   "no_polisi"
    t.float    "harga"
    t.boolean  "keterangan"
    t.integer  "jenis_mobil_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "mobils", ["jenis_mobil_id"], name: "index_mobils_on_jenis_mobil_id"

  create_table "pelanggans", force: :cascade do |t|
    t.string   "nama"
    t.string   "alamat"
    t.string   "jenis_kelamin"
    t.string   "no_telp"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "pengembalians", force: :cascade do |t|
    t.integer  "transaksi_id"
    t.string   "telat"
    t.string   "denda"
    t.boolean  "keterangan"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "pengembalians", ["transaksi_id"], name: "index_pengembalians_on_transaksi_id"

  create_table "transaksis", force: :cascade do |t|
    t.date     "tanggal_sewa"
    t.date     "tanggal_kembali"
    t.integer  "lama"
    t.float    "uang_muka"
    t.integer  "mobil_id"
    t.integer  "pelanggan_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "transaksis", ["mobil_id"], name: "index_transaksis_on_mobil_id"
  add_index "transaksis", ["pelanggan_id"], name: "index_transaksis_on_pelanggan_id"

end
