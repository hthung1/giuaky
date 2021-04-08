class CreateLoaiThuocs < ActiveRecord::Migration[6.1]
  def change
    create_table :loai_thuocs do |t|
      t.string :maloai
      t.string :tenloai
      t.text :ghichu

      t.timestamps
    end
  end
end
