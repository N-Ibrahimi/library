class LibraryList < ApplicationRecord
    has_many :books
    belongs_to :city 
end
