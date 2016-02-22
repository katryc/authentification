class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) #checks to see on the left side
                                                          #so ||= will avaluate the stuff on the right side
  end
  def require_logged_in
    return true if current_user
    return redirect_to root_path
  end

end
