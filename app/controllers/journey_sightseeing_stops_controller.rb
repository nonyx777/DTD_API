class JourneySightseeingStopsController < ApplicationController
  before_action :set_journey_sightseeing_stop, only: %i[ show update destroy ]

  # GET /journey_sightseeing_stops
  def index
    @journey_sightseeing_stops = JourneySightseeingStop.all

    render json: @journey_sightseeing_stops
  end

  # GET /journey_sightseeing_stops/1
  def show
    render json: @journey_sightseeing_stop
  end

  # POST /journey_sightseeing_stops
  def create
    @journey_sightseeing_stop = JourneySightseeingStop.new(journey_sightseeing_stop_params)

    if @journey_sightseeing_stop.save
      render json: @journey_sightseeing_stop, status: :created, location: @journey_sightseeing_stop
    else
      render json: @journey_sightseeing_stop.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /journey_sightseeing_stops/1
  def update
    if @journey_sightseeing_stop.update(journey_sightseeing_stop_params)
      render json: @journey_sightseeing_stop
    else
      render json: @journey_sightseeing_stop.errors, status: :unprocessable_entity
    end
  end

  # DELETE /journey_sightseeing_stops/1
  def destroy
    @journey_sightseeing_stop.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journey_sightseeing_stop
      @journey_sightseeing_stop = JourneySightseeingStop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def journey_sightseeing_stop_params
      params.fetch(:journey_sightseeing_stop, {})
    end
end
