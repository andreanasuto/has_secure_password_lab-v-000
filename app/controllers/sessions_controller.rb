class SessionsController < ApplicationController

  def create
    @user = User.last
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
    else
      return head(:forbidden)
    end
  end
end
