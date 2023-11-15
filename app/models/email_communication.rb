class EmailCommunication < ApplicationRecord
    belongs_to :user

    validates :email_detail, presence: true
end
