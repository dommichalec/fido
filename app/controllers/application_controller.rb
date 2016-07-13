class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def require_signin
    unless current_user
      redirect_to new_session_url, notice: "Please sign in first!"
    end
  end

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user
  # adding helper_method allows it to be a healper method as well
end
