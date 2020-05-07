class SessionsController < ApplicationController
  
  def show
    @session = Session.find(params[:id])  
    @counter = @session.counter
    @user1 = User.find(@session.user_1)
    @user2 = User.find(@session.user_2)
    if @session.counter.odd?
      @player = @user1
      @marker = true
    else 
      @player = @user2
      @marker = false
    end
    @turn = Turn.new(cross: @marker, users_id: @player[:id], sessions_id: @session[:id])
  end

  def add_a_turn
    @turn = Turn.create(
      index: params[:index],
      cross: params[:cross],
      users_id: params[:users_id],
      sessions_id: params[:sessions_id]
    )
    @session = Session.find(params[:sessions_id])
    @counter = @session.counter + 1
    @session.update(counter: @counter)
    redirect_to @session
  end

  private

  # def turn_params
  #   params.require(:turn).permit(:index, :cross, :users_id, :sessions_id)
  # end
end
