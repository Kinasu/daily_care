class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @pets = Pet.all
  end

  def new
  end

  def update
  end
end
