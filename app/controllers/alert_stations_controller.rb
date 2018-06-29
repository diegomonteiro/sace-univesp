class AlertStationsController < ApplicationController
  before_action :set_alert_station, only: [:show, :edit, :update, :destroy]

  # GET /alert_stations
  def index
    @alert_stations = AlertStation.all
  end

  # GET /alert_stations/1
  def show
  end

  # GET /alert_stations/new
  def new
    @alert_station = AlertStation.new
  end

  # GET /alert_stations/1/edit
  def edit
  end

  # POST /alert_stations
  def create
    @alert_station = AlertStation.new(alert_station_params)

    if @alert_station.save
      redirect_to @alert_station, notice: 'Alert station was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /alert_stations/1
  def update
    if @alert_station.update(alert_station_params)
      redirect_to @alert_station, notice: 'Alert station was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /alert_stations/1
  def destroy
    @alert_station.destroy
    redirect_to alert_stations_url, notice: 'Alert station was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alert_station
      @alert_station = AlertStation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def alert_station_params
      params.require(:alert_station).permit(:station, :alert_status, :date, :description, :region, :severity, :coordinates, :verified, :verified_for_user)
    end
end
