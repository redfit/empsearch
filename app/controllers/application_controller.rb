class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def after_sign_in_path_for(resources)
    return_url
  end
  def after_sign_out_path_for(resources)
    return_url
  end

  private

  def return_url
    url = request.env["HTTP_REFERER"]
    url ? url : employees_path
  end

end
