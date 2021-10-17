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
    redirect_to editorial_path(@editorial)

  end

  def edit
      @editorial = Editorial.find(params[:id])
  end

  def update
    @editorial = Editorial.find(params[:id])

    datos_editorial = params[:editorial]

    nom_editorial = datos_editorial[:nombre]
    pais_editorial = datos_editorial[:pais]
    tel_editorial = datos_editorial[:telefono]

    if @editorial.update(nombre: nom_editorial, pais: pais_editorial, telefono: tel_editorial)
        redirect_to editorial_path(@editorial)
    else
      render :edit
    end


  end
#NO se que vergas hice con esto pero ya funciona me daba un error al momento de elimanar el dato ya que la tabla books contenia
#el id de editorial pero acomode en el modelo editorial esto :dependent => :destroy y le puse destroy en @editorial.destroy :v
  def destroy
    @editorial = Editorial.find(params[:id])
    @editorial.destroy
    redirect_to editorials_path
  end
end
