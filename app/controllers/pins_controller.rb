class PinsController < ApplicationController
  def index

  end

  def new
    @board = Board.find(params[:board_id])
    @pin = Pin.new
  end

  def create
    @board = Board.find(params[:board_id])
    @pin = @board.pins.create!(pin_params)
    redirect_to board_path(@board)
  end

  def edit

  end

  def update

  end

  def destroy
  @board = Board.find(params[:board_id])
  @pin = @board.pins.find(params[:id])
  @pin.destroy
  redirect_to board_path(@board)
  end

  private
  def pin_params
    params.require(:pin).permit(:title, :image_url)
  end


end
