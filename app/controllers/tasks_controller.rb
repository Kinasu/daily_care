class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @pets = Pet.all
    @baby_pets = Pet.where(baby: true)
    @random_baby = random_baby(@baby_pets)
  end

  def new
  end

  def update
  end

  def random_baby_id(baby_pets)
  	baby_pets[rand(baby_pets.count)].id
  end

  def random_baby(baby_pets)
  	baby_pets.find(random_baby_id(baby_pets))
  end
end
