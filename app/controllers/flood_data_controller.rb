class FloodDataController < ApplicationController
  before_action :set_flood_datum, only: [:show, :edit, :update, :destroy]

  # GET /flood_data
  def index
    @flood_data = FloodDatum.all
  end

  # GET /flood_data/1
  def show
  end

  # GET /flood_data/new
  def new
    @flood_datum = FloodDatum.new
  end

  # GET /flood_data/1/edit
  def edit
  end

  # POST /flood_data
  def create
    @flood_datum = FloodDatum.new(flood_datum_params)

    if @flood_datum.save
      redirect_to @flood_datum, notice: 'Flood datum was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /flood_data/1
  def update
    if @flood_datum.update(flood_datum_params)
      redirect_to @flood_datum, notice: 'Flood datum was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /flood_data/1
  def destroy
    @flood_datum.destroy
    redirect_to flood_data_url, notice: 'Flood datum was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flood_datum
      @flood_datum = FloodDatum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def flood_datum_params
      params.require(:flood_datum).permit(:station, :date, :level, :flow_rate, :source_data, :source_data_url)
    end
end
