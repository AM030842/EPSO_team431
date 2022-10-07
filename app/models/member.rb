class Member < ApplicationRecord
    has_many :meetings, through :meetings
    has_many :attendances
end
