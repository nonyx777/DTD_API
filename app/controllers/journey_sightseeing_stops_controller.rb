class JourneySightseeingStopsController < ApplicationController
  include Common

  private

  def model_params
    params.require(:payload).permit(:journey_id, :sightseeing_stop_id)
  end
end
