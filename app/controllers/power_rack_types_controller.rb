class PowerRackTypesController < ApplicationController
  before_action :set_power_rack_type, only: %w[ show edit update destroy ]

  # GET /power_rack_types
  # GET /power_rack_types.json
  def index
    @power_rack_types = PowerRackType.all
  end

  # GET /power_rack_types/1
  # GET /power_rack_types/1.json
  def show
  end

  # GET /power_rack_types/new
  def new
    @power_rack_type = PowerRackType.new
  end

  # GET /power_rack_types/1/edit
  def edit
  end

  # POST /power_rack_types
  # POST /power_rack_types.json
  def create
    @power_rack_type = PowerRackType.new(power_rack_type_params)

    respond_to do |format|
      if @power_rack_type.save
        format.html { redirect_to @power_rack_type, notice: "Power rack type was successfully created." }
        format.json { render :show, status: :created, location: @power_rack_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @power_rack_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /power_rack_types/1
  # PATCH/PUT /power_rack_types/1.json
  def update
    respond_to do |format|
      if @power_rack_type.update(power_rack_type_params)
        format.html { redirect_to @power_rack_type, notice: "Power rack type was successfully updated." }
        format.json { render :show, status: :ok, location: @power_rack_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @power_rack_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /power_rack_types/1
  # DELETE /power_rack_types/1.json
  def destroy
    @power_rack_type.destroy
    respond_to do |format|
      format.html { redirect_to power_rack_types_url, notice: "Power rack type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_power_rack_type
      @power_rack_type = PowerRackType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def power_rack_type_params
      params.require(:power_rack_type).permit(:type_id, :name, :dimmed, :rack_size, :mixed_voltage, :ckt_per_mult)
    end
end
