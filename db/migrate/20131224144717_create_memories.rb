class CreateMemories < ActiveRecord::Migration
  def change
    create_table :memories do |t|
      t.text :text
      t.string :track
      t.integer :user_id
      t.integer :photo_id
      t.datetime :created_at

      t.timestamps
    end
  end
end
