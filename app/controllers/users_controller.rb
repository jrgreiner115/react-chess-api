class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    # if user exists, find user and return it instead of creating a user
    if User.find_by(name: params[:name])
      @user = User.find_by(name: params[:name])
    else
      # create a user
      @user = User.new(name: params[:name])
        if @user.valid?
          @user.save
      end
    end
    render json: @user
  end


end
