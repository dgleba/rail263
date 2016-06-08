class HomeController < ApplicationController
  #before_action :require_login

  # moved from application_controller. 2016-06-08 dgleba@gmail.com David Gleba 
  # override render to decorate all objects using the 'defer_draper' gem
  def render(*args)
    decorate_all
    super
  end

  def index
  end
end
