require 'httparty'

class InstagramController < ApplicationController

  def request_token
    p "#" * 20

    redirect_to "https://api.instagram.com/oauth/authorize/?client_id=#{ENV['INSTAGRAM_CLIENT_ID']}&redirect_uri=http://localhost:9000/instagram&response_type=code"

# Mikey's old code ======
    # instagram_response = HTTParty.post("https://api.instagram.com/oauth/access_token",
    #                                   :body => { client_id: ENV['INSTAGRAM_CLIENT_ID'],
    #                                              client_secret: ENV['INSTAGRAM_CLIENT_SECRET'],
    #                                              grant_type: "authorization_code",
    #                                              code: @code,
    #                                              redirect_uri: ENV['REDIRECT_URI']})
  end

  def oauth_token
    response = HTTParty.post("https://api.instagram.com/oauth/access_token", :body => { client_id: ENV['INSTAGRAM_CLIENT_ID'], client_secret: ENV['INSTAGRAM_CLIENT_SECRET'], grant_type: "authorization_code", code: params['code'], redirect_uri: "http://localhost:9000/instagram/response" })

    @current_user.update(ig_token: response['access_token'], ig_uid: response['id'])
    render json: true
  end

  def photos
    response = HTTParty.get("https://api.instagram.com/v1/users/self/media/recent?count=30")
    p response['data']['images']['standard_resolution']
    render json: response
  end

end