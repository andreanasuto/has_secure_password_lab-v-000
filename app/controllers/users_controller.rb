class UsersController < ApplicationController

  def create
    @user = User.new

  end

  private

  def create
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
