class Member < ApplicationRecord
    has_many :meetings, through: :meetings
end
