module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !current_user.nil?
  end

  # rubocop:disable Lint/UselessAssignment

  def log_out
    session.delete(:user_id)
    current_user = nil
  end

  # rubocop:enable Lint/UselessAssignment

  def logged_in_user
    redirect_to login_url unless logged_in?
  end

  def already_logged?
    redirect_to users_path if logged_in?
  end

  def right_user?
    redirect_to current_user if User.find(params[:id]) != current_user
  end
end
