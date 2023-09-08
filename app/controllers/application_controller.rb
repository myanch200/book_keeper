# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  around_action :set_active_storage_host

  private

  def set_active_storage_host
    ActiveStorage::Current.url_options = {
      host: request.base_url
    }
    yield
  ensure
    # Make sure to reset the options after the action has completed
    ActiveStorage::Current.reset
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name])
  end
end
