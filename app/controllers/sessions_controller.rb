class SessionsController < ApplicationController

  def create
    @user = User.last
    return head(:forbidden) unless @user.authenticate(params[:password])
    binding.pry
    session[:user_id] = @user.id
  end
end
