class Member < ApplicationRecord
    rolify

    has_many :meetings, through: :attendances
    has_many :attendances
    validates :name, :email, presence: true
    validates_uniqueness_of :email

    after_create :assign_default_role

    def assign_default_role
      self.add_role(:user) if self.roles.blank?
    end
   
end
