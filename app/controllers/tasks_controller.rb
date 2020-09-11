class TasksController < ApplicationController
  before_action :set_task, only: [:show]

  def show
    @comments = @task.comments
  end

  def new
    @board = Board.find(params[:board_id])
    @task = @board.tasks.build
  end

  def create
    board = Board.find(params[:board_id])
    @task = board.tasks.build(task_params)
    if @task.save
      redirect_to board_path(board)
    else
      render :new
    end
  end

  private
  def task_params
    params.require(:task).permit(:title, :content, :limit, :board_id, :eyecatch)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end