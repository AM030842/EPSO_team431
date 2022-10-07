class Attendance < ApplicationRecord
    belongs_to :member
    belongs_to :alum
    belongs_to :meeting
end
