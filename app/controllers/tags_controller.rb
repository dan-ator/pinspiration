class TagsController < ApplicationController

  def new
    @pin = Pin.find(params[:pin_id])
    @tag = Tag.new
    @board = Board.find(params[:board_id])
  end

  def create
    @pin = Pin.find(params[:pin_id])
    @category = Category.find_or_create_by(category: params[:category])
    @board = Board.find(params[:board_id])    
    existing_tag = Tag.find_by(pin: @pin, category: @category)
    unless existing_tag
      @pin.tags.create(category: @category)
    end
    redirect_to board_pin_path(@pin)
  end

end
