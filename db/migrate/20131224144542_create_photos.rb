class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :image
      t.integer :user_id
      t.datetime :created_at

      t.timestamps
    end
  end
end
