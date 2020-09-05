class TasksController < ApplicationController
  def index
    @tasks = Board.find(params[:id]).tasks.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Board.find(params[:id]).tasks.build
  end

end
