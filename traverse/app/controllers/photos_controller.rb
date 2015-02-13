class PhotosController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    photo = event.photos.create(photos_params)
    render json: photo
  end

  def destroy
    photo = Photo.find(params[:id])
    photo.destroy
  end

  private
  def photos_params
    params.require(:photo).permit(:url, :event_id)
  end
end
