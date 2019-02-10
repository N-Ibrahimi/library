class User < ApplicationRecord
has_secure_password
acts_as_voter

  belongs_to :city
  has_many :reservations 
  has_many :loans 
  has_many :comments 
  has_many :recomments 
  
end
