class SessionsController < ApplicationController

  def create
    @user = User.new(name: params[:name], password: params[:password])
  end
end
