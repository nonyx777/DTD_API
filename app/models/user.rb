class User < ApplicationRecord
    has_secure_password

    has_many :journeys
    has_many :email_communications
    has_many :bookings

    validates :full_name, presence: true
    validates :phone_number, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password_digest, presence: true
    validates :password_digest, length: {minimum: 8}
end
