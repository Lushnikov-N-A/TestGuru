# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :user_request

  private

  def authenticate_user!
    cookies[:user_in_path] = request.fullpath
    redirect_to login_path unless current_user
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user.present?
  end

  def user_request
    cookies[:user_in_path] = request.original_url if logged_in? == false
  end
end
