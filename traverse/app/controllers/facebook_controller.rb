class FacebookController < ApplicationController
  def save_token
    p params
    p @current_user
    if @current_user.fb_token != params[:accessToken]
      @current_user.update(fb_uid: params[:user_id], fb_token: params[:accessToken])
    end
    # render json: {fb_auth: true}
  end

  def photos
    access_token = @current_user.fb_token
    user_id = @current_user.fb_uid
    response = HTTParty.get("https://graph.facebook.com/v2.2/#{user_id}/photos/uploaded?access_token=#{access_token}")
    urls = response.parsed_response["data"].map { |image| image["images"][0]["source"] }
    p urls
    render json: urls
  end


 # HELLOOOO PLEASE TEST THIS PHOTOS ROUTE FIRST HTTParty
end
