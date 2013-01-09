class ApplicationController < ActionController::Base
  protect_from_forgery

  def require_user
    unless logged_in?
      redirect_to root_path
    end
  end

  def logged_in?
    session[:user_id].present?
  end
end