class Loan < ApplicationRecord

    belons_to :book
    ha_many :users         
    end
    
end
