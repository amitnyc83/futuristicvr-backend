# class Api::SessionsController < ApplicationController
#
#   skip_before_action : require_login, only: [:create], raise: false
#
#  def create
#    @user = User.find_by(user_params[:session][:email])
#    if @user && @user.authenticate(user_params[:password])
#      session[:user_id] = @user.id
#      render json: @user, status: :ok
#
#    else
#      render json: {error: "Invalid login attempt"}
#    end
#  end
#
#  def get_current_user
#    if logged_in?
#      render json: current_user
#    else
#      render json: {error: "There is no current user"}
#    end
#  end
#
#  def my_reservations
#    if logged_in?
#      render json: current_user..reserversations
#    else
#      render json: {message: "You have no upcoming reservations"}
#    end
#  end
#
#
#
#  def logout
#    if logged_in?
#      session.clear
#    end
#    render json: {message: "You have successfully logged out"}
#  end
#
#  private
#
#  def user_params
#    params.require(:user).permit(:name, :username, :password, :email, :phone_number, :img, :type, :auth_token)
#  end
#
#
# end
