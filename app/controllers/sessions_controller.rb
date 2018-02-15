class SessionsController < ApplicationController

  def create
    @user = User.new(name: params[:name])
  end
end
