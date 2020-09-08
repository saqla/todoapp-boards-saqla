class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :edit, :update]
  before_action :authenticate_user!

  def index
    @boards = Board.all
  end

  def show
    @tasks = @board.tasks
    # @tasks = @board.tasks
  end

  def new
    @board = current_user.boards.build
  end

  def create
    @board = current_user.boards.build(board_params)
    if @board.save
      redirect_to boards_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @board.update(board_params)
      redirect_to boards_path
    else
      render :edit
    end
  end

  def destroy
    board = Board.find(params[:id])
    board.destroy!
    redirect_to root_path
  end

  private
  def board_params
    params.require(:board).permit(:title, :content)
  end

  def set_board
    @board = Board.find(params[:id])
  end

end
