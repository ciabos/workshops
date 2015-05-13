class ApplicationController < ActionController::Base

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  protect_from_forgery with: :exception

  private

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
