class SessionsController < ApplicationController

  def create
    raise params.inspect
    @user = User.find_by(name: params[:name])
    return head(:forbidden) unless @user.password(params[:password])
    session[:user_id] = @user.id
  end
end
