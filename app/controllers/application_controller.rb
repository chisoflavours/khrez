class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:ownername])
    devise_parameter_sanitizer.permit(:account_update, keys: [:ownername])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:phone])
    devise_parameter_sanitizer.permit(:account_update, keys: [:phone])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:code])
    devise_parameter_sanitizer.permit(:account_update, keys: [:code])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:number])
    devise_parameter_sanitizer.permit(:account_update, keys: [:number])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
    
  end
  
  
end
