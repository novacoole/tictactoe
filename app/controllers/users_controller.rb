class UsersController < ApplicationController
  def new
  end

  def create
    @user1 = User.create(name: params[:user_1])
    @user2 = User.create(name: params[:user_2])
    if User.save
      redirect_to sessions_path
    else
      render 
    end
  end

  def show
  end
end

