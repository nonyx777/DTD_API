class JourneysController < ApplicationController
  include Common

  private

  def model_params
    params.require(:payload).permit(:user_id, :vehicle_id, :origin_city, :destination_city, :departure_date, :departure_time)
  end
end
