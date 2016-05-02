class CreateMobils < ActiveRecord::Migration
  def change
    create_table :mobils do |t|
      t.string :nama
      t.string :warna
      t.string :no_polisi
      t.float :harga
      t.boolean :keterangan
      t.references :jenis_mobil, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
