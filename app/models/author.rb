class Author < ApplicationRecord
    #validar que cada autor tenga nombre,nacinalidad, e idioma
    validates :nombre,:nacionalidad,:idioma, presence: {message: "Dato necesario"}

    #valida que el nombre de cada autor sea minnimo 2, maximo 50 caracteres
    validates :nombre, length: {minimum: 2, maximum: 50, message: "minimo 2 y maximo 50 caracteres"}

    #Validar que la nacinaliadd de cada autor sea entre 2 y 24 caracteres
    validates :nacionalidad, length: {in: 2..25, message: "Minimo 2, maximo 25"}

    #validar el registro de ganancias anuales es de cada autor sea numerico
    validates :ganancias_anuales,numericality:{message: "El dato debe ser numerico"}

     has_many :books
    #valida que cuando se cree o actualice un libro por medio de la relacion entre autor, tambien se realicen las validaciones del modelo book
    validates_associated :books
end
