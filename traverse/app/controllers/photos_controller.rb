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

  def photos_for_one_event
    photos = Photo.where(event_id: params[:event_id])
    photo_urls = photos.map { |entry| entry.url }
    photo_urls.uniq!
    render json: photo_urls
  end

  private
  def photos_params
    params.require(:photo).permit(:url, :event_id)
  end
end
