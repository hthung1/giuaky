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

ActiveRecord::Schema.define(version: 2021_04_08_103245) do

  create_table "loai_thuocs", force: :cascade do |t|
    t.string "maloai"
    t.string "tenloai"
    t.text "ghichu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nccs", force: :cascade do |t|
    t.string "macc"
    t.string "tenncc"
    t.text "diachi"
    t.text "thongtin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sxes", force: :cascade do |t|
    t.string "maSX"
    t.string "tenHangs"
    t.string "quocGia"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "thuocs", force: :cascade do |t|
    t.string "mathuoc"
    t.string "TenThuoc"
    t.string "MaHangSX"
    t.string "MaNCC"
    t.string "CongDung"
    t.string "MaLoai"
    t.text "GhiChu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
