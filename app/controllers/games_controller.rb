class GamesController < ApplicationController
  def index
    @games = Game.all
    render json: @games
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  private

  def game_params
    params.require(:game).permit(:player_id_white, :player_id_black, :current_game_board)
  end
end
