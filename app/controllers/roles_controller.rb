class RolesController < ApplicationController
  # devise..
  before_filter :authenticate_user!
  # sorcery..
  #before_action :require_login
  # cancancan..
  load_and_authorize_resource :role

  # moved from application_controller. 2016-06-08 dgleba@gmail.com David Gleba
  # override render to decorate all objects using the 'defer_draper' gem
  def render(*args)
    decorate_all
    super
  end

  # GET /roles
  def index
    @q = @roles.search params[:q]
    @roles = @q.result.page(params[:page])
  end

  # GET /roles/1
  def show
  end

  # GET /roles/new
  def new
  end

  # GET /roles/1/edit
  def edit
  end

  # POST /roles
  def create
    respond_to do |format|
      if @role.save
        format.html { redirect_to @role, notice: t('success_create') }
        format.json { render :show, status: :created, location: @role }
      else
        format.html { render :new }
        format.json { render json: @role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roles/1
  def update
    respond_to do |format|
      if @role.update(role_params)
        format.html { redirect_to @role, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @role }
      else
        format.html { render :edit }
        format.json { render json: @role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roles/1
  def destroy
    @role.destroy
    respond_to do |format|
      format.html { redirect_to roles_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def role_params
    params.require(:role).permit(:name, :description)
  end
end
