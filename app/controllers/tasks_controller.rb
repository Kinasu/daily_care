class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @pets = Pet.select_random
    @baby_pets = @pets.where(baby: true)
  end

  def new
  end

  def update
  end


end
