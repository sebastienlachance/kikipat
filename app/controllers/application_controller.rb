class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  def current_user
    if session[:password]
      true
    else 
      false
    end
  end
  

  def admin?
    session[:password] == "kikipat"
  end
end
