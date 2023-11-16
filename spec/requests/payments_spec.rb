require 'rails_helper'

RSpec.describe "/payments", type: :request do
  include_examples('request_shared_spec', 'payments', 2)

  let(:valid_attributes) do
    {
      payment_method: "Paypal"
    }
  end

  let(:invalid_attributes) do
    {
      payment_method: nil
    }
  end

  let(:new_attributes) do
    {
      payment_method: "Cash"
    }
  end

end
