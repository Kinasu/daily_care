class UsersController < ApplicationController

  def show

  end

  private

  def authorize_user
    reject_user unless @user == current_user
  end

  def load_user
    @user ||= User.find params[:id]
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
