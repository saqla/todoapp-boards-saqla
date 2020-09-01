class BoardsController < ApplicationController
  def index
    @boards = Board.first
  end
end
