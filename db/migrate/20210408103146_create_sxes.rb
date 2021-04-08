class CreateSxes < ActiveRecord::Migration[6.1]
  def change
    create_table :sxes do |t|
      t.string :maSX
      t.string :tenHangs
      t.string :quocGia

      t.timestamps
    end
  end
end
