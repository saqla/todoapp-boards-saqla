class HomeController < ApplicationController
  def index
    @board = Board.all
  end

  def about
  end

end
