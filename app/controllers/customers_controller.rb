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
    # got error for nilclass ..@q = @customers.ransack (  params[:q] ) with ability.rb.. Customer.try(:user) == user
    @q = @customers.ransack (  params[:q] )
    @customers = @q.result.page(params[:page]) # regular entry.
    
    # customized..
    # @q.name_cont = 'Kumar'  unless params[:q]  # default to name contains Kumar, but allow search.
    # @q.name_cont = 'Kumar'     # limit view to only name is Kumar..
     #@results = @q.result
    # @customers = @results.page(params[:page] ) 
  end

  # GET /customers/1
  def show
  end

  def print1
    # @q = @customers.ransack (  params[:q] )
    # @customers = @q.result.page(params[:page]) # regular entry.
     logger.warn "It works!"
     #redirect_to :back
  end

  def print2
     # logger.warn "It works!"
     #redirect_to :back
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
    
      # Assign creator of the record as the current user. This will never be edited anywhere. 2016-10-29
      @customer.user = current_user
      
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
