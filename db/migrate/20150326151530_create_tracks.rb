class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.text :embed_code
      t.float :time_start
      t.float :time_end
      t.date :event_date
      t.string :event_name
      t.string :event_location
      t.text :description
      t.integer :user_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
