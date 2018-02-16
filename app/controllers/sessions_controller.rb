class SessionsController < ApplicationController

  def create
    @user = User.last
    return head(:forbidden) unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
  end
end
