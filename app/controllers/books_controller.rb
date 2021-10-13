class BooksController < ApplicationController
  def index
    if params[:editorial_id]
      @books =  Editorial.find(params[:editorial_id]).books
    else
      @books = Book.all
    end
  
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
