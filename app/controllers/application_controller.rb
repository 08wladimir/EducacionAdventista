class ApplicationController < ActionController::Base
 # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :set_current_user

def set_current_user
  Usuario.current_usuario = current_usuario
  Colegio.current_usuario = current_usuario
  Docente.current_usuario = current_usuario
end

  protect_from_forgery with: :exception
  
  before_filter :configure_permitted_parameters, if: :devise_controller?
  
  protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:usuario, :email, :password) }
            devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:usuario, :email, :password, :current_password, ) }
        end
end
