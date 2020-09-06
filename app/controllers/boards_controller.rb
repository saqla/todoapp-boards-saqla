class BoardsController < ApplicationController
  before_action :set_params
  before_action :authenticate_user!

  def index
    @boards = Board.all
  end
end
