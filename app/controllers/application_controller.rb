class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authorize_admin
    redirect_to root_path, error: 'Unauthorized!' unless admin_signed_in?
  end

  def admin_signed_in?
    current_user.try(:is_admin?)
  end
end
