class UsersController < ApplicationController
  def new
  end

  def create
    @user1 = User.create(name: params[:string1])
    @user2 = User.create(name: params[:string2])
  end

  def show
  end
end

