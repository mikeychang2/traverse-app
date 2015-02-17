class UsersController < ApplicationController
  skip_before_action :set_current_user, :authenticate_request, only: [:create, :new]

  def new
  end

  def create
    @user = User.create(name: params[:name], username: params[:username], email: params[:email], password: params[:password])
    auth_token = @user.generate_auth_token

    p @user
    p auth_token

    render json: { auth_token: auth_token, user_id: @user.id}
  end

  def show
    user = User.find(params[:id])
    return render json: user
  end

  def update
    user = User.find(params[:id])
    user.update(params)
    return render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end

end
