class AuthController < ApplicationController


  def create
    user = User.find_by(email: auth_params[:email])
    if user && user.authenticate(auth_params[:password])
      token = JWT.encode({user_id: user.id}, 'SECRET')
      render json: {username: user.username, user_id: user.id, jwt: token, type: user.type, email: user.email,  user: user.name}
    else
      render json: {message: "Password not found"}, status: 400
    end
  end


  def show
    string = request.authorization
    token = JWT.decode(string, 'SECRET')[0]
    id = token["user_id"].to_i
    @user = User.find(id)
    if @user
      render json: {user_id: @user.id, username: @user.username, type: @user.type}
    else
      render json: {error: "User not found"}, status: 422
    end
  end



  private

  def auth_params
    params.require(:user).permit(:email, :password)
  end


end
