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
      @book = Book.new
  end

  def create
    datos_libro =  params[:book]

    titulo_lib = datos_libro[:titulo]
    idioma_lib = datos_libro[:idioma]
    paginas_lib = datos_libro[:paginas]
    descripcion_lib = datos_libro[:descripcion]
    autor_lib = datos_libro[:author_id]
    categoria_lib = datos_libro[:category_id]
    editorial_lib = datos_libro[:editorial_id]

    @book = Book.new(titulo: titulo_lib, idioma: idioma_lib, paginas: paginas_lib, descripcion: descripcion_lib, author_id: autor_lib, category_id: categoria_lib, editorial_id: editorial_lib)
    @book.save

    redirect_to book_path(@book)
  end

  def edit
  end

  def update
  end

  def delete
  end
end
