class JobsController < ApplicationController
  before_action :require_login
  load_and_authorize_resource :job

  # GET /jobs
  def index
    @q = @jobs.search params[:q]
    @jobs = @q.result.page(params[:page])
  end

  # GET /jobs/1
  def show
  end

  # GET /jobs/new
  def new
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs
  def create
    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: t('success_create') }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def job_params
    params.require(:job).permit(:description, :done, :project_id)
  end
end
