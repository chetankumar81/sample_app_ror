module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  #Returns true if the given user is current user
  def current_user?(user)
    user == current_user
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  # Redirects to stored location (or to the default).
  def redirect_back_or(default)
    redirect_to(session[:forwading_url] || default)
    session.delete(:forwarding_url)
  end

  # stores the URL trying to access
  def store_location
    session[:forwading_url] = request.original_url if request.get?
  end
end
