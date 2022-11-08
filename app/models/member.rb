class Member < ApplicationRecord


    has_many :meetings, through: :attendances
    has_many :attendances

    validates :name, :email, :points, presence: true

end
