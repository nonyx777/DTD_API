class Driver < ApplicationRecord
    has_many :driver_assignments

    validates :full_name, presence: true
    validates :phone_number, presence: true
    validates :email, presence: true, uniqueness: true
    validates :profile_photo, presence: true
end
