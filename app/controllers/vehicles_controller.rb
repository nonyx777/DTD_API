class VehiclesController < ApplicationController
  include Common

  private

  def model_params
    params.require(:payload).permit(:vehicle_type, :seating_capacity)
  end

end
