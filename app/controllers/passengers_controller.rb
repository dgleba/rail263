class PassengersController < ApplicationController
  before_action :require_login
  load_and_authorize_resource :passenger

  # GET /passengers
  def index
    @q = @passengers.search params[:q]
    @passengers = @q.result.page(params[:page])
  end

  # GET /passengers/1
  def show
  end

  # GET /passengers/new
  def new
  end

  # GET /passengers/1/edit
  def edit
  end

  # POST /passengers
  def create
    respond_to do |format|
      if @passenger.save
        format.html { redirect_to @passenger, notice: t('success_create') }
        format.json { render :show, status: :created, location: @passenger }
      else
        format.html { render :new }
        format.json { render json: @passenger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /passengers/1
  def update
    respond_to do |format|
      if @passenger.update(passenger_params)
        format.html { redirect_to @passenger, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @passenger }
      else
        format.html { render :edit }
        format.json { render json: @passenger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /passengers/1
  def destroy
    @passenger.destroy
    respond_to do |format|
      format.html { redirect_to passengers_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def passenger_params
    params.require(:passenger).permit(:name, :description, :output, :rental_record_id)
  end
end
