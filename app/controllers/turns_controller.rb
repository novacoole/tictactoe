class TurnsController < ApplicationController
  
  def new
  end

  def create
    if couter.odd?
      @user_1 = User.last - 1  
    else 
      @user_2 = User.last
    end
    Turn.create(
      cross:params[:cross], 
      index:params[:index], 
      users_id:params[:users_id],
      sessions_id:params[:sessions_id]
    )
  end

  def show
  end
end
