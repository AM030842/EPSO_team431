class Member < ApplicationRecord
    has_many :meetings
    has_many :attendances
end
