class Member < ApplicationRecord
    has_many :meetings, through: :attendances
    has_many :attendances
    validates :name, :email, presence: true
    validates_uniqueness_of :email


   
end
