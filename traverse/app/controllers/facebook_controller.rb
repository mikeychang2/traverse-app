class FacebookController < ApplicationController
  def save_token
    response = HTTParty.get("https://graph.facebook.com/oauth/access_token?grant_type=fb_exchange_token&client_id=#{ENV['FACEBOOK_KEY']}&client_secret=#{ENV['FACEBOOK_SECRET']}&fb_exchange_token=#{params[:accessToken]}")
    parsed_response = response.parsed_response
    long_live_token = parsed_response[13..parsed_response.length-17]

    @current_user.update(fb_uid: params[:user_id], fb_token: long_live_token)
    render json: true

  end

  def photos
    access_token = @current_user.fb_token
    user_id = @current_user.fb_uid

    response = HTTParty.get("https://graph.facebook.com/v2.2/#{user_id}/photos/uploaded?access_token=#{access_token}")
    urls = response.parsed_response["data"].map { |image| image["images"][0]["source"] }
    p urls
    render json: urls
  end

  # check access token expiration and re-validate it (CLIENT-SIDE: facebookController: .checkAccessToken)
  # def validation
  #   access_token = @current_user.fb_token
  #   user_id = @current_user.fb_uid
  #   response = HTTParty.get("https://graph.facebook.com/v2.2/#{user_id}/photos/uploaded?access_token=#{access_token}")
  # end

end
