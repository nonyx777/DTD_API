class Payment < ApplicationRecord
    has_one :booking

    validates :payment_method, presence: true
end