class UsersController < ApplicationController


  # #GET /users
  # def index
  #   @users = User.all
  #   render json: @users
  # end
  #
  #
  # # GET /users/1
  # def show
  #   render json: @user
  # end



  def create
    @user = User.create(user_params)
    if @user.valid?
      token = JWT.encode({user_id: @user.id}, 'SECRET')
      render json: {user_id: @user.id, username: @user.username, type: @user.type, name: @user.name, jwt: token}
    else
      render json: {error: "does not work"}, status: 422
    end
  end


  # def update
  #   if @user.update(user_params)
  #     render json: @user
  #   else
  #     render json: {message: "There was an error Updating your account. Please try again!"}
  #   end
  # end
  #
  #
  # def destroy
  #   @user.destroy
  # end



  private

  def user_params
    params.require(:user).permit(:type, :username, :password, :name, :email, :phone_number, :img)
  end

end
