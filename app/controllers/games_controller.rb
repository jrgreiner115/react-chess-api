class GamesController < ApplicationController
  def index
    @games = Game.all
    render json: @games
  end

  def join
    if Game.last
      @game = Game.last
      render json: @game
    else
      @game = Game.create()
      render json: @game
    end
  end

  def show
    if Game.last
      @game = Game.find(params[:id])
      render json: @game
    else
      @game = Game.create()
      render json: @game
    end
  end

  def create
    @game = Game.create()
      render json: @game
  end

  def update
    # byebug
    @game = Game.find(params[:id])
    @game.update(current_game_board: params[:current_game_board])
      render json: @game
  end

  # private

  # def game_params
  #   params.require(:game).permit(:player_id_white, :player_id_black, :current_game_board)
  # end
end
