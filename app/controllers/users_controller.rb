class UsersController < ApplicationController
  # devise..
  before_filter :authenticate_user!
  # sorcery..
  #before_action :require_login
  # cancancan..
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

        # Sends email to user when user is created. 2016-07-21_Thu_12.31-PM David Gleba
        ExampleMailer.sample_email(@user).deliver

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


  def send_user1_email
    @user = User.find(params[:id])

    ExampleMailer.sample_email(@user).deliver
    flash[:notice] = "user email has been sent."
    redirect_to user_path(@user.id)
  end


  private

  # Only allow a trusted parameter "white list" through.

  def user_params
    params.require(:user).permit(:name, :email, :role_id, :crypted_password, :password, :password_confirmation)
  end
end
