class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
	before_action :auto_delete
	before_action :set_locale

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end
 
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

	def auto_delete
	  Post.where('created_at <= ?', Time.now - 30.days).destroy_all
	end

  protected

  def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :about_me) }
  end
end
