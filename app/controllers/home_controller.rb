class HomeController < ApplicationController
  def index
    @board = Board.first
  end

  def about
  end

end
