class UsersController < ApplicationController
  before_action :configure_permitted_parameters, if: :devise_controller?

  def show; end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:allow_key])
  end
end
