class Editorial < ApplicationRecord
    has_many :books, dependent: :destroy

   # before_destroy :verificar_lib

    def self.verificar_fk

        join  = Book.joins(:editorial).where('editorials.id' => :id)

        if join.exists?
            return true
        else
            return false
        end
        
        #join.each do |dato|
         #   puts "#{dato.titulo} Autor: #{dato.nombre} "
        #end


     #  existe = Book.where(editorial_id: Editorial.where("id="+id.to_s)).count
     

       
    end
   

end
