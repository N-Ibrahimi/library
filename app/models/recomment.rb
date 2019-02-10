class Recomment < ApplicationRecord

     belongs_to :comment
     has_many :users 

end
