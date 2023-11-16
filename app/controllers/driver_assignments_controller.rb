class DriverAssignmentsController < ApplicationController
  include Common

  private
    def model_params
      params.require(:payload).permit(:booking_id, :driver_id)
    end
end
