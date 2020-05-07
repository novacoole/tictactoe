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
    if @counter > 9
      redirect_to draw_path
    end
    @turn = Turn.new(cross: @marker, user_id: @player[:id], session_id: @session[:id])
  end

  def add_a_turn
    @turn = Turn.create(
      index: params[:index],
      cross: params[:cross],
      user_id: params[:user_id],
      session_id: params[:session_id]
    )
    if @turn.save
      @session = Session.find(params[:session_id])
      @counter = @session.counter + 1
      @session.update(counter: @counter)
      redirect_to @session
    else
      render :flash["didnt save"] #how do this??
    end

  end

  private

  # def turn_params
  #   params.require(:turn).permit(:index, :cross, :user_id, :session_id)
  # end
end
