class CreatePengembalians < ActiveRecord::Migration
  def change
    create_table :pengembalians do |t|
      t.references :transaksi, index: true, foreign_key: true
      t.string :telat
      t.string :denda
      t.boolean :keterangan

      t.timestamps null: false
    end
  end
end
