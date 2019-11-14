class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  #GET /users
  def index
    @users = User.all
    render json: @users
  end


  # GET /users/1
  def show
    render json: @user
  end



  def create
    @user = User.create(user_params)
    if @user.save
      token = JWT.encode({user_id: @user.id}, 'SECRET')
      render json: {user_id: @user.id, username: @user.username, type: @user.type, name: @user.name, jwt: token}
    else
      render json: {error: "does not work"}, status: 422
    end
  end


  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: {message: "There was an error Updating your account. Please try again!"}
    end
  end


  def destroy
    @user.destroy
  end


  def profile
    user = User.find_by_auth_token!(request.headers[:token])
    if user.type === "Customer"
      render json: {username: user.username, name: user.name, type: user.type}
    else
      render json: {username: username: user.username, name: user.name, type: user.type}
    end
  end



  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:type, :username, :password, :name, :email, :phone_number, :img)
  end

end
