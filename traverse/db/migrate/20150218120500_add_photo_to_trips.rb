class AddPhotoToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :photo, :string, :default => 'https://unsplash.imgix.net/11/converse-fields.jpg?fit=crop&fm=jpg&h=800&q=75&w=1050'
  end
end
