class Meeting < ApplicationRecord
    has_many :members, through: :attendances
    has_many :attendances

    validates :time, :title, :description, :points, presence: true
end
