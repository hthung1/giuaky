class CreateNccs < ActiveRecord::Migration[6.1]
  def change
    create_table :nccs do |t|
      t.string :macc
      t.string :tenncc
      t.text :diachi
      t.text :thongtin

      t.timestamps
    end
  end
end
