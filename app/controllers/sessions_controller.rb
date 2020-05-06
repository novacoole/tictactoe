class SessionsController < ApplicationController
  def create
    @session = Session.create
    redirect_to @session
  end

  def new
  end

  def show
  end
end
