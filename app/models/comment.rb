class Comment < ApplicationRecord
    acts_as_votable

    belongs_to :user 
    belongs_to :event 

    has_many :racomments

end
