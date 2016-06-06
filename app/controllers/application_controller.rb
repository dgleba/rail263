class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # override render to decorate all objects using the 'defer_draper' gem
  def render(*args)
    decorate_all
    super
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to :back, alert: exception.message
  end

  private

  def not_authenticated
    # don't add the alert when we just went to de root path
    return redirect_to login_path if request.path == '/'
    # else we probably were trying to access something that needs authorization
    redirect_to login_path, alert: t('user_sessions.login_first')
  end
end
