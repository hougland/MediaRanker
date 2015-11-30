class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :artist
      t.string :description
      t.integer :ranking

      t.timestamps null: false
    end
  end
end
