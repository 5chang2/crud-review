class BoardController < ApplicationController
  def index
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
  end

  def new
  end

  def create
    Board.create({title: params[:title],content: params[:content]})
    redirect_to '/'
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to '/'
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])
    @board.title = params[:title]
    @board.content = params[:content]
    @board.save
    
    redirect_to '/'
  end
end
