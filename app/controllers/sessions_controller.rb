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
    if @session.counter.odd?
      @player = @user1
    else 
      @player = @user2
    end
  end

  def add_a_turn
    Turn.create(
      cross:params[:cross], 
      index:params[:index], 
      users_id:params[:users_id],
      sessions_id:params[:sessions_id]
    )
  end
end
