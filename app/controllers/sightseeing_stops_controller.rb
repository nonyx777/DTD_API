class SightseeingStopsController < ApplicationController
  before_action :set_sightseeing_stop, only: %i[ show update destroy ]

  # GET /sightseeing_stops
  def index
    @sightseeing_stops = SightseeingStop.all

    render json: @sightseeing_stops
  end

  # GET /sightseeing_stops/1
  def show
    render json: @sightseeing_stop
  end

  # POST /sightseeing_stops
  def create
    @sightseeing_stop = SightseeingStop.new(sightseeing_stop_params)

    if @sightseeing_stop.save
      render json: @sightseeing_stop, status: :created, location: @sightseeing_stop
    else
      render json: @sightseeing_stop.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sightseeing_stops/1
  def update
    if @sightseeing_stop.update(sightseeing_stop_params)
      render json: @sightseeing_stop
    else
      render json: @sightseeing_stop.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sightseeing_stops/1
  def destroy
    @sightseeing_stop.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sightseeing_stop
      @sightseeing_stop = SightseeingStop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sightseeing_stop_params
      params.fetch(:sightseeing_stop, {})
    end
end
