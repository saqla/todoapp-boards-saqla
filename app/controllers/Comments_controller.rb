class CommentsController < ApplicationController
  def new
    @task = Task.find(params[:task_id])
    @comment = @task.comments.build
  end

  def create
    @task = Task.find(params[:task_id])
    @comment = @task.comments.build(comment_params)
    if @comment.save
      redirect_to board_task_path(@task, @task.id)
    else
      render :new
    end

  end

  private
    def comment_params
      params.require(:comment).permit(:content, :board_id, :task_id)
    end
end