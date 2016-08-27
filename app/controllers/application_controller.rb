class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_paper_trail_whodunnit
  
  # move decorator out of this controller. put it in each individual controller. 2016-06-08
  
  rescue_from CanCan::AccessDenied do |exception|
    # redirect_to :back, alert: exception.message
    redirect_to main_app.root_path, :alert => exception.message
  end

  
  
  
  private

  # Overwrite the method sorcery calls when it
  # detects a non-authenticated request.
  def not_authenticated
    # Make sure that we reference the route from the main app.
    redirect_to main_app.login_path alert: t('user_sessions.login_first')
  end

  # def not_authenticated
    # # don't add the alert when we just went to de root path
    # return redirect_to login_path if request.path == '/'
    # # else we probably were trying to access something that needs authorization
    # redirect_to login_path, alert: t('user_sessions.login_first')
  # end

end

