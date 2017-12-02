class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
  end

  def update
  end
end
