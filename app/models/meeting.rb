class Meeting < ApplicationRecord
    has_many :members
    has_many :alums
    has_many :attendances

    #validates :meeting_title, :meeting_time, :meeting_desc: true
end
