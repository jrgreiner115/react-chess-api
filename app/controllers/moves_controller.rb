class MovesController < ApplicationController
  def index
    @moves = Move.all
    render json: @moves
  end

  def create
    @move = Move.new(game_id: params[:game_id],]
       previous_position: params[:previous_position], new_position: params[:new_position])

     if @move.save
       # WEBSOCKET IT TO OTHER PLAYER HERE
       ActionCable.broadcast('my-room', @move)
    render json: @move
  end

  def update
    @move = Move.find(params[:id])

    @move.update(previous_position: params[:previous_position], new_position: params[:new_position])

    render json: @move
  end
end
