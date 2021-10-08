class AuthorsController < ApplicationController
  
  layout "layout_author"
  
  def index
    @autores = Author.all 
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    #se reocoge el hash con los datos del autor
    datos_autor = params[:author]

    #se recoge cada uno de los datos del autor
    nombre_autor = datos_autor[:nombre]
    nac_autor = datos_autor[:nacionalidad]
    idioma_autor = datos_autor[:idioma]
    ganacias_autor = datos_autor[:ganacias_anuales]

    #en base a los datos llegados como parametro se crea un nuevo modelo autor
    @author = Author.new(nombre: nombre_autor,nacionalidad: nac_autor,idioma: idioma_autor,ganacias_anuales: ganacias_autor)

    #por ultimo el modelo recientemente creado se guarda en la base de datos
    @author.save
    redirect_to author_path(@author)

  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    datos_autor = params[:author]

    nombre_autor = datos_autor[:nombre]
    nac_autor = datos_autor[:nacionalidad]
    idioma_autor = datos_autor[:idioma]
    ganacias_autor = datos_autor[:ganacias_anuales]

    if @author.update(nombre: nombre_autor, nacionalidad: nac_autor,idioma: idioma_autor, ganacias_anuales: ganacias_autor)
        redirect_to author_path(@author)
    else  
       render :edit
    end
  end

  def destroy
    
    @author = Author.find_by_id(params[:id])
    @author.delete
    redirect_to authors_path

  end
end
