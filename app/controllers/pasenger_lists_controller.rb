class PasengerListsController < ApplicationController
  before_action :require_login
  load_and_authorize_resource :pasenger_list

  # GET /pasenger_lists
  def index
    @q = @pasenger_lists.search params[:q]
    @pasenger_lists = @q.result.page(params[:page])
  end

  # GET /pasenger_lists/1
  def show
  end

  # GET /pasenger_lists/new
  def new
  end

  # GET /pasenger_lists/1/edit
  def edit
  end

  # POST /pasenger_lists
  def create
    respond_to do |format|
      if @pasenger_list.save
        format.html { redirect_to @pasenger_list, notice: t('success_create') }
        format.json { render :show, status: :created, location: @pasenger_list }
      else
        format.html { render :new }
        format.json { render json: @pasenger_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pasenger_lists/1
  def update
    respond_to do |format|
      if @pasenger_list.update(pasenger_list_params)
        format.html { redirect_to @pasenger_list, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @pasenger_list }
      else
        format.html { render :edit }
        format.json { render json: @pasenger_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pasenger_lists/1
  def destroy
    @pasenger_list.destroy
    respond_to do |format|
      format.html { redirect_to pasenger_lists_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def pasenger_list_params
    params.require(:pasenger_list).permit(:clocknum, :name, :active, :passenger_id)
  end
end
