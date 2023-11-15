require 'rails_helper'

RSpec.describe Payment, type: :model do
  attributes = [
    {booking: :have_one},
    {payment_method: :presence},
  ]

  include_examples("model_shared_spec", :payment, attributes)
end
