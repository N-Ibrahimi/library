class Book < ApplicationRecord

  
    belongs_to :category 
  
    has_many :rservations 
    has_many :users, through: :reservation
    has_many :loans
    has_many :tags
    has_many :libraries
end
