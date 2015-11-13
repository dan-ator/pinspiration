class TagsController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @pins = @category.pins
    @board = Board.find(params[:board_id])
  end


end
