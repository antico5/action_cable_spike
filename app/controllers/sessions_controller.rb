class SessionsController < ApplicationController
  def create
    cookies.encrypted[:user_id] = params[:user_id]
    redirect_to users_path, notice: 'Logged in'
  end

  def destroy
    cookies.encrypted[:user_id] = nil
    redirect_to users_path, notice: 'Logged out'
  end
end
