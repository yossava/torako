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

ActiveRecord::Schema.define(version: 20160606013032425444) do

  create_table "akuns", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "alamats", force: :cascade do |t|
    t.string   "sebagai"
    t.string   "nama_penerima"
    t.text     "alamat"
    t.string   "kode_pos"
    t.string   "provinsi"
    t.string   "kabupaten"
    t.string   "kecamatan"
    t.string   "nomor_telepon"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "provinsi_sebagai"
    t.string   "kota_sebagai"
    t.string   "kecamatan_sebagai"
  end

  create_table "carts", force: :cascade do |t|
    t.integer  "toko_id"
    t.integer  "user_id"
    t.integer  "produk_id"
    t.string   "invoice"
    t.text     "catatan"
    t.integer  "jumlah"
    t.integer  "subtotal"
    t.integer  "total"
    t.string   "metode_pembayaran"
    t.integer  "alamat_id"
    t.string   "kurir"
    t.integer  "berat"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "ongkir"
    t.integer  "seller_id"
    t.integer  "state"
    t.string   "resi"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "kategori"
    t.string   "deskripsi"
    t.string   "gambar_kategori"
    t.integer  "parent_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "slide1"
    t.string   "slide2"
    t.string   "slide3"
  end

  create_table "favorite_produks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "produk_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "toko_id"
    t.integer  "produk_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "cart_id"
    t.integer  "rating"
    t.text     "feed"
  end

  create_table "homeitems", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "img1"
    t.string   "img2"
    t.string   "img3"
    t.string   "img4"
    t.string   "img5"
    t.string   "img6"
    t.string   "img7"
    t.string   "img8"
    t.string   "img9"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "pet_id"
  end

  create_table "produks", force: :cascade do |t|
    t.string   "nama_produk"
    t.decimal  "harga"
    t.decimal  "harga_diskon"
    t.decimal  "berat"
    t.string   "foto_produk1"
    t.string   "foto_produk2"
    t.string   "foto_produk3"
    t.string   "foto_produk4"
    t.string   "foto_produk5"
    t.string   "foto_produk6"
    t.text     "deskripsi"
    t.decimal  "harga_grosir1"
    t.decimal  "harga_grosir2"
    t.decimal  "harga_grosir3"
    t.decimal  "harga_grosir4"
    t.decimal  "harga_grosir5"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "category_id"
    t.string   "subcategory_id"
    t.integer  "jumlah_grosir1min"
    t.integer  "jumlah_grosir1max"
    t.integer  "jumlah_grosir2min"
    t.integer  "jumlah_grosir2max"
    t.integer  "jumlah_grosir3min"
    t.integer  "jumlah_grosir3max"
    t.integer  "jumlah_grosir4min"
    t.integer  "jumlah_grosir4max"
    t.integer  "jumlah_grosir5min"
    t.integer  "jumlah_grosir5max"
    t.integer  "jumlah_grosir6min"
    t.integer  "jumlah_grosir6max"
    t.integer  "toko_id"
    t.text     "deskripsi_lengkap"
    t.integer  "harga_beli"
    t.integer  "diskon"
  end

  create_table "rekenings", force: :cascade do |t|
    t.string   "pemilik"
    t.string   "cabang"
    t.string   "nomor_rekening"
    t.string   "nama_bank"
    t.string   "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "statics", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.integer  "seller_id"
    t.integer  "buyer_id"
    t.integer  "stat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "produk_id"
    t.integer  "cart_id"
  end

  create_table "subcategories", force: :cascade do |t|
    t.string   "subkategori"
    t.text     "deskripsi"
    t.string   "subcategori_image"
    t.integer  "category_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "gambar_kategori2"
    t.string   "gambar_kategori3"
  end

  create_table "tokos", force: :cascade do |t|
    t.string   "nama_toko"
    t.string   "provinsi"
    t.string   "kota"
    t.string   "kecamatan"
    t.string   "agen1"
    t.string   "agen2"
    t.string   "agen3"
    t.string   "agen4"
    t.string   "agen5"
    t.string   "agen6"
    t.string   "agen7"
    t.string   "slogan"
    t.text     "deskripsi"
    t.text     "alamat"
    t.string   "status"
    t.string   "tutup_sampai"
    t.string   "toko_image"
    t.string   "banner1"
    t.string   "banner2"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.string   "banner3"
    t.string   "kode_pos"
    t.string   "catatan"
    t.string   "terima_pembayaran1"
    t.string   "terima_pembayaran2"
    t.string   "terima_pembayaran3"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "namalengkap"
    t.string   "nomor_handphone"
    t.boolean  "is_female",              default: false
    t.datetime "date_of_birth"
    t.string   "profil_image"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
