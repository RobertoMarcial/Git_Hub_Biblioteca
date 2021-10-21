class Editorial < ApplicationRecord
    has_many :books, dependent: :destroy

   # before_destroy :verificar_lib

   

end
