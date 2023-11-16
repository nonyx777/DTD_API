class SightseeingStopsController < ApplicationController
  include Common

  private

  def model_params
    params.require(:payload).permit(:stop_name, :description)
  end
end
