class Book < ApplicationRecord
  
  belongs_to :category
  belongs_to :author
  belongs_to :editorial

  has_many :borrowings
  has_many :users, through: :borrowings
end
