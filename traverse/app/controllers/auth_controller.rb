class AuthController < ApplicationController
  skip_before_action :authenticate_request, :set_current_user # this will be implemented later

  def authenticate
    @username = params[:username]
    @password = params[:password]
    user = User.find_by(username: @username)

    # NEED TO ADD THE PASSWORD VERIFICATION BACK IN
    if user && user.authenticate(@password)

      render json: { auth_token: user.generate_auth_token, user_id: user.id, user_name: user.name}
    else
      render json: { error: 'Invalid username or password' }, status: :unauthorized
    end
  end

end
