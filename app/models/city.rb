class City < ApplicationRecord

    has_many :users 
    has_many :libraries
    has_many :events

end
