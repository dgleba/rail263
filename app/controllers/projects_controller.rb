class ProjectsController < ApplicationController
  before_action :require_login
  load_and_authorize_resource :project

  # GET /projects
  def index
    @q = @projects.search params[:q]
    @projects = @q.result.page(params[:page])
  end

  # GET /projects/1
  def show
  end

  # GET /projects/new
  def new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  def create
    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: t('success_create') }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def project_params
    params.require(:project).permit(:name, :description, jobs_attributes: [:id, :description, :done, :_destroy])
  end
end


