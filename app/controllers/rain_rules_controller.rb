class RainRulesController < ApplicationController
  before_action :set_rain_rule, only: [:show, :edit, :update, :destroy]

  # GET /rain_rules
  def index
    @rain_rules = RainRule.all
  end

  # GET /rain_rules/1
  def show
  end

  # GET /rain_rules/new
  def new
    @rain_rule = RainRule.new
  end

  # GET /rain_rules/1/edit
  def edit
  end

  # POST /rain_rules
  def create
    @rain_rule = RainRule.new(rain_rule_params)

    if @rain_rule.save
      redirect_to @rain_rule, notice: 'Rain rule was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rain_rules/1
  def update
    if @rain_rule.update(rain_rule_params)
      redirect_to @rain_rule, notice: 'Rain rule was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rain_rules/1
  def destroy
    @rain_rule.destroy
    redirect_to rain_rules_url, notice: 'Rain rule was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rain_rule
      @rain_rule = RainRule.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rain_rule_params
      params.require(:rain_rule).permit(:station, :start_date, :end_date, :without_expiration, :operation, :reference_value, :range_value_ini, :range_value_end, :nickname, :description, :enable)
    end
end
