class EmailCommunicationsController < ApplicationController
  include Common

  private

  def model_params
    params.require(:payload).permit(:user_id, :email_detail)
  end
end
