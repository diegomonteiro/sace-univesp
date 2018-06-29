class RainDataController < ApplicationController
  before_action :set_rain_datum, only: [:show, :edit, :update, :destroy]

  # GET /rain_data
  def index
    @rain_data = RainDatum.all
  end

  # GET /rain_data/1
  def show
  end

  # GET /rain_data/new
  def new
    @rain_datum = RainDatum.new
  end

  # GET /rain_data/1/edit
  def edit
  end

  # POST /rain_data
  def create
    @rain_datum = RainDatum.new(rain_datum_params)

    if @rain_datum.save
      redirect_to @rain_datum, notice: 'Rain datum was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rain_data/1
  def update
    if @rain_datum.update(rain_datum_params)
      redirect_to @rain_datum, notice: 'Rain datum was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rain_data/1
  def destroy
    @rain_datum.destroy
    redirect_to rain_data_url, notice: 'Rain datum was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rain_datum
      @rain_datum = RainDatum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rain_datum_params
      params.require(:rain_datum).permit(:station, :date, :rain, :source_data, :source_data_url)
    end
end
