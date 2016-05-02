class RenameJenisMobilToJenis < ActiveRecord::Migration
  def change
  	drop_table :mobils
  end
end
