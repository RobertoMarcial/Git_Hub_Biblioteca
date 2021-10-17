class Editorial < ApplicationRecord
    has_many :books, :dependent => :destroy
end
