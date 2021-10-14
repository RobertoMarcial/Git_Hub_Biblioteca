class BooksController < ApplicationController
  def index
    if params[:editorial_id]
      @books =  Editorial.find(params[:editorial_id]).books
      elsif params[:author_id]
        
        @books = Author.find(params[:author_id]).books
        
         
      else
          @books = Book.all
      end

  
  end

  def show
   if params[:editorial_id]
        @book =  Editorial.find(params[:editorial_id]).books.find(params[:id])
      else
          @book = Book.find(params[:id])
      end
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
