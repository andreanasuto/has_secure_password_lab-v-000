class SessionsController < ApplicationController

  def create
    @user = User.find_by(name: params[:name])
    binding.pry
    return head(:forbidden) unless @user.password(params[:password])
    session[:user_id] = @user.id
  end
end
