class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    @user.save
    sessions[:user_id] = @user.id
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
