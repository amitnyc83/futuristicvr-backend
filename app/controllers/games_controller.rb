class GamesController < ApplicationController

  def index
    games = Game.all
    render json: games
  end

  def create
    game = Game.create(game_params)
    render json: {name: game.name, description: game.description, image: game.image, genre: game.genre, admin_id: game.admin_id}
  end

  def show
    game = Game.find(params[:id])
    render json: {game: game}
  end

  def update
    game = Game.find(params[:id])
    if game.update(game_params)
     render json: {game: game, message: "Game info has been successfully updated"}
    else
      render json: {message: "There was an error updating the game"}
    end
  end

  def destroy
    @reservation = Reservation.find_by(game_id: params[:id])
    @review = Review.find_by(game_id: params[:id])
    if @reservation && @review
      @reservation.destroy
      @review.destroy
      @game.destroy
    else
      @game.destroy
    end

  end


  private


  def game_params
    params.require(:game).permit(:image, :description, :name, :genre, :admin_id)
  end

end
