class FacebookController < ApplicationController
  def save_token
    p params
    p @current_user
    @current_user.update(fb_uid: params[:user_id], fb_token: params[:accessToken])
    render json: {fb_auth: true}
  end


end
