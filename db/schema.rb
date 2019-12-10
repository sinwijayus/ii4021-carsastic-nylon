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

ActiveRecord::Schema.define(version: 20191210000000) do

  create_table "jadwal_kuliah", force: :cascade do |t|
    t.integer "kelas_kuliah_id"
    t.string "kode_waktu"
    t.integer "ruangan_id"
    t.index ["kelas_kuliah_id"], name: "index_jadwal_kuliah_on_kelas_kuliah_id"
  end

  create_table "jurusan", force: :cascade do |t|
    t.string "nama"
    t.string "kode", limit: 2
  end

  create_table "kelas_kuliah", force: :cascade do |t|
    t.integer "mata_kuliah_id"
    t.integer "tahun_ajaran_id"
    t.integer "kelas_id"
    t.index ["mata_kuliah_id"], name: "index_kelas_kuliah_on_mata_kuliah_id"
    t.index ["tahun_ajaran_id"], name: "index_kelas_kuliah_on_tahun_ajaran_id"
  end

  create_table "mata_kuliah", force: :cascade do |t|
    t.integer "jurusan_id"
    t.string "nama"
    t.text "desc"
    t.integer "kode", limit: 4
    t.integer "credit"
    t.decimal "pass_rate"
    t.decimal "trend_rate"
    t.index ["jurusan_id"], name: "index_mata_kuliah_on_jurusan_id"
  end

  create_table "silabus_jurusan", force: :cascade do |t|
    t.integer "jurusan_id"
    t.integer "model", limit: 4
    t.integer "mata_kuliah_id"
    t.text "desc"
    t.integer "sifat"
    t.index ["jurusan_id"], name: "index_silabus_jurusan_on_jurusan_id"
    t.index ["mata_kuliah_id"], name: "index_silabus_jurusan_on_mata_kuliah_id"
  end

  create_table "tahun_ajaran", force: :cascade do |t|
    t.integer "tahun"
    t.integer "semester"
  end

end
