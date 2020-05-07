class PagesController < ApplicationController
  def homepage
  end

  def draw
  end

  def wins
    puts "************************************"
    puts "log"
    puts params
    puts "************************************"
    @winner = User.find(params[:id])
  end
  
end
