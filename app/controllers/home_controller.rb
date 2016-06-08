class HomeController < ApplicationController
  #before_action :require_login

  # override render to decorate all objects using the 'defer_draper' gem
  def render(*args)
    decorate_all
    super
  end

  def index
  end
end
