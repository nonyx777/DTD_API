require 'rails_helper'

RSpec.describe "/email_communications", type: :request do
  include_examples('request_shared_spec', 'email_communications', 3)

  let(:valid_attributes) do
    {
      user_id: create(:user).id,
      email_detail: Faker::Lorem.paragraph
    }
  end

  let(:invalid_attributes) do
    {
      user_id: create(:user).id,
      email_detail: nil
    }
  end

  let(:new_attributes) do
    {
      user_id: create(:user).id
    }
  end
end
