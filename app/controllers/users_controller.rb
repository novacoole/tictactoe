class UsersController < ApplicationController
  def create
    @user1 = User.create(name: params[:user_1])
    @user2 = User.create(name: params[:user_2])
    @session = Session.create(counter: 1, user_1: @user1[:id], user_2: @user2[:id])
    redirect_to @session
  end

  def show
  end
end

