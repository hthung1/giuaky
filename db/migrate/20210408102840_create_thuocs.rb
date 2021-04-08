class CreateThuocs < ActiveRecord::Migration[6.1]
  def change
    create_table :thuocs do |t|
      t.string :mathuoc
      t.string :TenThuoc
      t.string :MaHangSX
      t.string :MaNCC
      t.string :CongDung
      t.string :MaLoai
      t.text :GhiChu

      t.timestamps
    end
  end
end
