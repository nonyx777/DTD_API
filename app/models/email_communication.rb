class EmailCommunication < ApplicationRecord
    belongs_to :user

    validates :email_detaill, presence: true
end
