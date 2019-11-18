class SessionsController < ApplicationController
  def new
  end

  def create
    session[:email] = params[:session][:email]
    redirect_to root_path
  end
end