require 'rails_helper'

RSpec.describe EmailCommunication, type: :model do
  attributes = [
    {user: :belong_to},
    {email_detail: :presence},
  ]

  include_examples("model_shared_spec", :email_communication, attributes)
end
