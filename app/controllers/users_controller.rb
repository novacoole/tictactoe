class UsersController < ApplicationController
  def new
  end

  def create
    @user1 = User.create(name: params[:user_1])
    @user2 = User.create(name: params[:user_2])
    @session = Session.create
    redirect_to @session
  end

  def show
  end
end

