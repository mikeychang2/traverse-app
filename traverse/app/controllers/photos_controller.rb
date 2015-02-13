class PhotosController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    photo = event.photos.create(params[:photo])
    render json: photo
  end

  def destroy
    photo = Photo.find(params[:id])
    photo.destroy
  end
end
