class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :yelp_link
      t.string :address
      t.string :name
      t.string :photo_url
      t.integer :event_id

      t.timestamps
    end
  end
end
