class CustomersController < ApplicationController
  # devise..
  before_filter :authenticate_user!
  #before_filter :set_paper_trail_whodunnit
  
  # sorcery..
  #before_action :require_login
  # cancancan..
  load_and_authorize_resource :customer

  # GET /customers
  def index
    @q = @customers.search params[:q]
    @customers = @q.result.page(params[:page])
  end

  # GET /customers/1
  def show
  end

  # GET /customers/new
  def new
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  def create
    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: t('success_create') }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def customer_params
    params.require(:customer).permit(:name, :address, :phone, :discount)
  end
end
