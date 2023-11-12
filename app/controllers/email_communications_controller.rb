class EmailCommunicationsController < ApplicationController
  before_action :set_email_communication, only: %i[ show update destroy ]

  # GET /email_communications
  def index
    @email_communications = EmailCommunication.all

    render json: @email_communications
  end

  # GET /email_communications/1
  def show
    render json: @email_communication
  end

  # POST /email_communications
  def create
    @email_communication = EmailCommunication.new(email_communication_params)

    if @email_communication.save
      render json: @email_communication, status: :created, location: @email_communication
    else
      render json: @email_communication.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /email_communications/1
  def update
    if @email_communication.update(email_communication_params)
      render json: @email_communication
    else
      render json: @email_communication.errors, status: :unprocessable_entity
    end
  end

  # DELETE /email_communications/1
  def destroy
    @email_communication.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email_communication
      @email_communication = EmailCommunication.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def email_communication_params
      params.fetch(:email_communication, {})
    end
end
