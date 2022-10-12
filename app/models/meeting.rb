class Meeting < ApplicationRecord
    has_many :members, through: :members
    has_many :attendances

    validates :meeting_title, :meeting_time, :meeting_desc, presence: :true
end
