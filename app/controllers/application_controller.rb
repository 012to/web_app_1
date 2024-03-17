class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, except: [:show], unless: :pages_controller?

  protected

  def configure_permitted_parameters
    added_attrs = %i[name email password password_confirmation]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  end

  private

  def pages_controller?
    controller_name == 'high_voltage/pages' && action_name == 'show'
  end

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end
end
