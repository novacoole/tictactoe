class SessionsController < ApplicationController
  
  def create
  end

  def new
  end

  def show
    @session = Session.find(params[:id])  
    @counter = @session.counter
    @user1 = User.find(@session.user_1)
    @user2 = User.find(@session.user_2)
  end
end
