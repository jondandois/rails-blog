class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # private

  def log_in(user)
    session[:user_id] = user.id
  end
  helper_method :log_in

  # Logs out the current user.
  def log_out
    forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end
  helper_method :log_out

  # Forgets a persistent session.
  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  # Remembers a user in a persistent session.
  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end
  helper_method :remember

  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end
  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end
  helper_method :current_user

  def authorize
    redirect_to login_url, alert: "Not Authorized" if current_user.nil?
  end
  helper_method :authorize
end

