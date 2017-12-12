class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @pets = Pet.all
    @random_pet = @pets.select_random
    @users = User.all 
  end

  def new
  end

  def update
  end


end
