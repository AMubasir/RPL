class CreateTransaksis < ActiveRecord::Migration
  def change
    create_table :transaksis do |t|
      t.date :tanggal_sewa
      t.date :tanggal_kembali
      t.integer :lama
      t.float :uang_muka
      t.references :mobil, index: true, foreign_key: true
      t.references :pelanggan, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
