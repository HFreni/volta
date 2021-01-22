class PowerRacksController < ApplicationController
  before_action :set_power_rack, only: %w[ show edit update destroy ]

  # GET /power_racks
  # GET /power_racks.json
  def index
    @power_racks = PowerRack.all
  end

  # GET /power_racks/1
  # GET /power_racks/1.json
  def show
  end

  # GET /power_racks/new
  def new
    @power_rack = PowerRack.new
  end

  # GET /power_racks/1/edit
  def edit
  end

  # POST /power_racks
  # POST /power_racks.json
  def create
    @power_rack = PowerRack.new(power_rack_params)

    respond_to do |format|
      if @power_rack.save
        format.html { redirect_to @power_rack, notice: "Power rack was successfully created." }
        format.json { render :show, status: :created, location: @power_rack }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @power_rack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /power_racks/1
  # PATCH/PUT /power_racks/1.json
  def update
    respond_to do |format|
      if @power_rack.update(power_rack_params)
        format.html { redirect_to @power_rack, notice: "Power rack was successfully updated." }
        format.json { render :show, status: :ok, location: @power_rack }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @power_rack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /power_racks/1
  # DELETE /power_racks/1.json
  def destroy
    @power_rack.destroy
    respond_to do |format|
      format.html { redirect_to power_racks_url, notice: "Power rack was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_power_rack
      @power_rack = PowerRack.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def power_rack_params
      params.require(:power_rack).permit(:rack_id, :rack_call, :rack_name, :rack_location, :service_id, :rack_type_id, :rack_addr_start, :rack_univ, :phase_rotation)
    end
end
