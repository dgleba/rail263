class VehiclesController < ApplicationController
  before_action :require_login
  load_and_authorize_resource :vehicle

  # GET /vehicles
  def index
    @q = @vehicles.search params[:q]
    @vehicles = @q.result.page(params[:page])
  end

  # GET /vehicles/1
  def show
  end

  # GET /vehicles/new
  def new
  end

  # GET /vehicles/1/edit
  def edit
  end

  # POST /vehicles
  def create
    respond_to do |format|
      if @vehicle.save
        format.html { redirect_to @vehicle, notice: t('success_create') }
        format.json { render :show, status: :created, location: @vehicle }
      else
        format.html { render :new }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicles/1
  def update
    respond_to do |format|
      if @vehicle.update(vehicle_params)
        format.html { redirect_to @vehicle, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @vehicle }
      else
        format.html { render :edit }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicles/1
  def destroy
    @vehicle.destroy
    respond_to do |format|
      format.html { redirect_to vehicles_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def vehicle_params
    params.require(:vehicle).permit(:veh_reg_no, :category, :name, :desc, :photo, :daily_rate)
  end
end
