class UsersController < ApplicationController
  def new
  end
  def create
    user = User.create(params[:user])
    render json: user
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update(params)
    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    # render json: user
  end

end
