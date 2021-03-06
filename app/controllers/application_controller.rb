class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  private
  def current_user
    #code
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def verify_logged_in
    #code
    unless current_user
        redirect_to admin_login_path, notice: "Anda Tidak Punya Akses, Silahkan Login Dulu"
    end
  end
end
