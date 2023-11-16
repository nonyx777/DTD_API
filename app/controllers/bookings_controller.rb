class BookingsController < ApplicationController
  include Common

  private
    def model_params
      params.require(:payload).permit(:user_id, :journey_sightseeing_stop_id, :payment_id, :total_cost, :booking_date, :remaining_day)
    end
end
