class PaymentsController < ApplicationController
  include Common

  private

  def model_params
    params.require(:payload).permit(:payment_method)
  end
end
