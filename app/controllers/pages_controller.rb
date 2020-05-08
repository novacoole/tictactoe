class PagesController < ApplicationController
  def homepage
  end

  def draw
  end

  def wins
    @winner = User.find(params[:id])
  end
  
end
