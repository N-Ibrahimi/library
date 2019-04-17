class Event < ApplicationRecord

belongs_to :city 
has_many :comments
has_many :attendances
has_many :inviteds, class_name: 'User',  through: :attendances
belongs_to :admin, :foreign_key => :admin_id, class_name: 'User'

end
