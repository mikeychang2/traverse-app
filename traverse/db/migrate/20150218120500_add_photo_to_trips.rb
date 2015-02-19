class AddPhotoToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :photo, :string, :default => 'https://stocksnap.io/img-thumbs/280h/E6CAA82218.jpg'
  end
end
