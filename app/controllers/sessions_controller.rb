class SessionsController < ApplicationController

  def create
    @user = User.find_by(name: params[:name]).save
    binding.pry
    return head(:forbidden) unless @user.authenticate(params[:password])
  end
end
