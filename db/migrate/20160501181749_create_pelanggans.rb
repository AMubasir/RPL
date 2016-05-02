class CreatePelanggans < ActiveRecord::Migration
  def change
    create_table :pelanggans do |t|
      t.string :nama
      t.string :alamat
      t.string :jenis_kelamin
      t.string :no_telp

      t.timestamps null: false
    end
  end
end
