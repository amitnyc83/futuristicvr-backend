class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update, :destroy]

  def index
    @games = Game.all
    render json: @games
  end

  def show
    render json: @game
  end


  def create
    @game = Game.new(game_params)
    if @game.save 
      render json: @game
    else
      render json: {message: "There was an error creating a new game"}
    end
  end

  def update
    if @game.update(game_params)
      render json: @game
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


  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:id, :image, :description, :name, :likes, :reviews, :genre, :reservation)
  end

end
