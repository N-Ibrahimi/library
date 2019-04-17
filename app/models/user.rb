class User < ApplicationRecord
has_secure_password
acts_as_voter

  belongs_to :city
  has_many :reservations 
  has_many :loans 
  has_many :comments 
  has_many :recomments 
  has_many :events,foreign_key: 'admin_id',  dependent: :destroy
  has_many :attendances, foreign_key: 'invited_id' , dependent: :destroy

  validates :email, uniqueness: true
  
end
