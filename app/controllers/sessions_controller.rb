class SessionsController < ApplicationController

  def create
    @user = User.last
    binding.pry
    return head(:forbidden) unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
  end
end
