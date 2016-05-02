class CreateJenisMobils < ActiveRecord::Migration
  def change
    create_table :jenis_mobils do |t|
      t.string :jenis

      t.timestamps null: false
    end
  end
end
