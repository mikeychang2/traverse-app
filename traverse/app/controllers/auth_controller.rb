class AuthController < ApplicationController
  skip_before_action :authenticate_request # this will be implemented later

  def authenticate
    @username = params[:username]
    @password = params[:password]
    user = User.find_by(username: @username)
    # user = User.find_by_email(params[:email])
    p user
    # if user && user.authenticate(params[:password])
    render json: { auth_token: generate_auth_token(user) }
    # else
    #   render json: { error: 'Invalid username or password' }, status: :unauthorized
    # end
  end

  def generate_auth_token(user)
    payload = { user_id: user.id }
    JWT.encode(payload, Rails.application.secrets.secret_key_base)
  end

end
