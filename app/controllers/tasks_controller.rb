class TasksController < ApplicationController
  def index
    @board = Board.find(params[:board_id])
    @tasks = Board.find(params[:board_id]).tasks.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Board.find(params[:id]).tasks.build
  end

  # private
  # def board_params

  # end


end
