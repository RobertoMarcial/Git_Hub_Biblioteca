class EditorialsController < ApplicationController
  def index
    @editoriales = Editorial.all
  end

  def show
    @editorial = Editorial.find(params[:id])
  end

  def new
    @editorial = Editorial.new
  end

  def create
    datos_editorial = params[:editorial]

    nom_editorial = datos_editorial[:nombre]
    pais_editorial = datos_editorial[:pais]
    tel_editorial = datos_editorial[:telefono]

    @editorial = Editorial.new(nombre: nom_editorial, pais: pais_editorial, telefono: tel_editorial)

    @editorial.save
    redirect_to editorial_path

  end

  def edit
  end

  def update
  end

  def delete
  end
end
