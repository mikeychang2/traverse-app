require 'httparty'

class InstagramController < ApplicationController

  # def request_token
  #   p "#" * 20

  #   redirect_to "https://api.instagram.com/oauth/authorize/?client_id=#{ENV['INSTAGRAM_CLIENT_ID']}&redirect_uri=http://localhost:9000/instagram&response_type=code"

# Mikey's old code ======
    # instagram_response = HTTParty.post("https://api.instagram.com/oauth/access_token",
    #                                   :body => { client_id: ENV['INSTAGRAM_CLIENT_ID'],
    #                                              client_secret: ENV['INSTAGRAM_CLIENT_SECRET'],
    #                                              grant_type: "authorization_code",
    #                                              code: @code,
    #                                              redirect_uri: ENV['REDIRECT_URI']})
  # end

  def oauth_token
    p "#" * 20
    p params['access_token']
    p "#" * 20
    p @current_user
    p "#" * 20
    response = HTTParty.post("https://api.instagram.com/oauth/access_token", :body => { client_id: ENV['INSTAGRAM_CLIENT_ID'], client_secret: ENV['INSTAGRAM_CLIENT_SECRET'], grant_type: "authorization_code", code: params['access_token'], redirect_uri: "http://localhost:9000/instagram.html" })

     p "RESPONSE======================"
    p response
    p "#" * 20
    if response.parsed_response['code'] == 400
      render json: false
    else
      @current_user.update(ig_token: response['access_token'], ig_uid: response['user']['id'])
      render json: true
    end
  end

  def photos
    p "#" * 20
    p @current_user.ig_token
    p "#" * 20

    response = HTTParty.get("https://api.instagram.com/v1/users/self/media/recent?count=15&access_token=#{@current_user.ig_token}")
    p "RESPONSE======================"
    p response.parsed_response
    urls = response.parsed_response["data"].map do |image|
      image['images']['standard_resolution']['url']
    end
    render json: urls
  end

  def checker
    p "#" * 20
    p @current_user.ig_token
    p "#" * 20
    if @current_user.ig_token != nil
      render json: true
    else
      render json: false
    end

  end


end




__END__

1708549317.cb89d1d.61a33a5d010245edbd1fd947360722e0
1708549317


curl \-F 'client_id=cb89d1dac394466e9767ad0e3bf9c6bf' \
    -F 'client_secret=abb3a5272a9546ba91c67e9eef7ae535' \
    -F 'grant_type=authorization_code' \
    -F 'redirect_uri=http://localhost:9000/instagram.html' \
    -F 'code=cb290f9d72034a02a02b7bc3ad137f59' \https://api.instagram.com/oauth/access_token



https://api.instagram.com/oauth/authorize/?client_id=cb89d1dac394466e9767ad0e3bf9c6bf&redirect_uri=http://localhost:9000/instagram&response_type=code
