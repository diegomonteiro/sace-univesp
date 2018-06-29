class FloodRulesController < ApplicationController
  before_action :set_flood_rule, only: [:show, :edit, :update, :destroy]

  # GET /flood_rules
  def index
    @flood_rules = FloodRule.all
  end

  # GET /flood_rules/1
  def show
  end

  # GET /flood_rules/new
  def new
    @flood_rule = FloodRule.new
  end

  # GET /flood_rules/1/edit
  def edit
  end

  # POST /flood_rules
  def create
    @flood_rule = FloodRule.new(flood_rule_params)

    if @flood_rule.save
      redirect_to @flood_rule, notice: 'Flood rule was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /flood_rules/1
  def update
    if @flood_rule.update(flood_rule_params)
      redirect_to @flood_rule, notice: 'Flood rule was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /flood_rules/1
  def destroy
    @flood_rule.destroy
    redirect_to flood_rules_url, notice: 'Flood rule was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flood_rule
      @flood_rule = FloodRule.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def flood_rule_params
      params.require(:flood_rule).permit(:station, :start_date, :end_date, :without_expiration, :operation, :reference_value, :range_value_ini, :range_value_end, :nickname, :description, :enable)
    end
end
