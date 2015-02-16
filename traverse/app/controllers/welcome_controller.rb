require 'httparty'

class WelcomeController < ApplicationController
  def index
  end

  # def retrieve_token
  #   response = HTTParty.get("https://graph.facebook.com/oauth/access_token?client_id=1411251792503804&client_secret=32045f5f10eb69d7ab83b8f1f465c54c&grant_type=client_credentials")

  #   access_token = response.parsed_response
  #   HTTParty.get("https://graph.facebook.com/v2.2/me/photos/uploaded?auth_token=sldfjlsdfjsdlkfj")

  # end



end
