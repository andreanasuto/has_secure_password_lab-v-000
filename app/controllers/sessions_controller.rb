class SessionsController < ApplicationController

  def create
    @user = User.find_by(name: params[:name], password: params[:password])
    return head(:forbidden) unless @user.authenticate(params[:password])
  end
end
