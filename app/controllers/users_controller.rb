class UsersController < ApplicationController


  def index
    @users = User.all
    render json: @users
  end


  def create
    @user = User.create(user_params)
    render json: user
  end


  private
  def user_param
    params.require(:user).permit(:user, :username, :password_digest)
  end

end
