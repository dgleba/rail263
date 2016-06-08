class UsersController < ApplicationController
  before_action :require_login
  load_and_authorize_resource :user

  # moved from application_controller. 2016-06-08 dgleba@gmail.com David Gleba 
  # override render to decorate all objects using the 'defer_draper' gem
  def render(*args)
    decorate_all
    super
  end

  # GET /users
  def index
    @q = @users.search params[:q]
    @users = @q.result.page(params[:page])
  end

  # GET /users/1
  def show
  end

  # GET /users/new
  def new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  def create
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: t('success_create') }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.

  def user_params
    params.require(:user).permit(:name, :email, :crypted_password, :password, :password_confirmation)
  end
end
