class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :location, :user_type])
    devise_parameter_sanitizer.permit(:account_update, keys: [:location, :name])
  end
end
