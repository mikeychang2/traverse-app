class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.string :photo_url, :default => 'https://unsplash.imgix.net/11/converse-fields.jpg?fit=crop&fm=jpg&h=800&q=75&w=1050'
      # t.integer :trip_id
      t.boolean :default_photo, :default => false

      t.timestamps
    end
  end
end
