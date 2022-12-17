class CreateQlTruongs < ActiveRecord::Migration[7.0]
  def change
    create_table :ql_truongs do |t|
      t.string :ten
      t.string :chuyen_nganh
      t.string :vi_tri
      t.date :thoi_gian_hd
      t.integer :sl_hoc_sinh
      t.string :nganh_dt

      t.timestamps
    end
  end
end
