class RentalRecordsController < ApplicationController
  before_action :require_login
  load_and_authorize_resource :rental_record

  # GET /rental_records
  def index
    @q = @rental_records.search params[:q]
    @rental_records = @q.result.page(params[:page])
  end

  # GET /rental_records/1
  def show
  end

  # GET /rental_records/new
  def new
  end

  # GET /rental_records/1/edit
  def edit
  end

  # POST /rental_records
  def create
    respond_to do |format|
      if @rental_record.save
        format.html { redirect_to @rental_record, notice: t('success_create') }
        format.json { render :show, status: :created, location: @rental_record }
      else
        format.html { render :new }
        format.json { render json: @rental_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rental_records/1
  def update
    respond_to do |format|
      if @rental_record.update(rental_record_params)
        format.html { redirect_to @rental_record, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @rental_record }
      else
        format.html { render :edit }
        format.json { render json: @rental_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rental_records/1
  def destroy
    @rental_record.destroy
    respond_to do |format|
      format.html { redirect_to rental_records_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def rental_record_params
    params.require(:rental_record).permit(:customer_id, :vehicle_id, :start_date, :end_date, :lastUpdated, :output)
  end
end
