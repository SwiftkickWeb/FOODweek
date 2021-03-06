class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  add_flash_types :error, :success, :info

  def after_sign_in_path_for(resource)
      dashboard_path
  end

  def after_sign_out_path_for(resource_or_scope)
      root_path
  end
end
