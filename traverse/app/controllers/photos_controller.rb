class PhotosController < ApplicationController
  def create
    p "%" *20
    p params
    p "%" *20
    event = Event.find(params[:event_id])
    photos = params[:photos]

    p params[:photos]

    photos.each do |photo|
      event.photos.create(url: photo)
    end

    render json: photos
  end

  def destroy
    photo = Photo.find(params[:id])
    photo.destroy
    render json: photo
  end

  private
  def photos_params
    params.require(:photo).permit(:url, :event_id)
  end
end
