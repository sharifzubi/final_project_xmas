class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.float :longitude
      t.float :latitude
      t.integer :photo_id
      t.datetime :created_at

      t.timestamps
    end
  end
end
