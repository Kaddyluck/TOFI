class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :success, :danger, :info, :warning

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:login, :email, :password, :password_confirmation, :fio, :document_type, :document_num, :phone_num, :dob])
  end

  def transfer
    user.balance -= 100
  end
end
