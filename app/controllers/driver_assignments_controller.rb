class DriverAssignmentsController < ApplicationController
  before_action :set_driver_assignment, only: %i[ show update destroy ]

  # GET /driver_assignments
  def index
    @driver_assignments = DriverAssignment.all

    render json: @driver_assignments
  end

  # GET /driver_assignments/1
  def show
    render json: @driver_assignment
  end

  # POST /driver_assignments
  def create
    @driver_assignment = DriverAssignment.new(driver_assignment_params)

    if @driver_assignment.save
      render json: @driver_assignment, status: :created, location: @driver_assignment
    else
      render json: @driver_assignment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /driver_assignments/1
  def update
    if @driver_assignment.update(driver_assignment_params)
      render json: @driver_assignment
    else
      render json: @driver_assignment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /driver_assignments/1
  def destroy
    @driver_assignment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_driver_assignment
      @driver_assignment = DriverAssignment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def driver_assignment_params
      params.fetch(:driver_assignment, {})
    end
end
