class UsersController < ApplicationController

  def show
  end

  def index
    @tasks = Task.all
    @pets = Pet.all
    @random_pet = @pets.select_random
  end

  def user_unlogin
    if user.nil?
      redirect_to root_path
    end
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
