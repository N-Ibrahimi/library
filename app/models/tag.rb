class Tag < ApplicationRecord

    belongs_to :category 
    has_many :books 
end
