class Event < ApplicationRecord

belongs_to :city 
has_many :comments

end
